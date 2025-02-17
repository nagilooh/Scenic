
from enum import Enum
import re

class Cstr_type(Enum):
	ONROAD = 0

	NOCOLLISION = 10

	CANSEE = 20

	HASTOLEFT = 30
	HASTORIGHT = 31
	HASBEHIND = 32
	HASINFRONT = 33

	DISTCLOSE = 40
	DISTMED = 41
	DISTFAR = 42

	SP_NONE = 100
	SP_SLOW = 101
	SP_MED = 102
	SP_FAST = 103

	BE_NONE = 110
	BE_FOLLOW = 111
	BE_MERGE_LEFT = 112
	BE_MERGE_RIGHT = 113
	BE_SLOWDOWN = 114
	BE_SPEEDUP = 115
	BE_FOLLOW_AVOID = 116
	BE_SCENIC = 117


class Cstr():
	def __init__(self, t, src, tgt):
		self.type = t
		self.src = src
		self.tgt = tgt

	def pretty(self):
		return f'{self.type.name} : [{self.src}, {self.tgt}];'

	def __str__(self):
		return self.pretty()
	
	def __repr__(self):
		return self.pretty()
	
class Cstr_util:
	def parseConfigConstraints(params, keyword):
		# Parse constraints from config file
		str_cons = params.get(keyword)
		if str_cons == None:
			return []
		list_cons = str_cons.split(';')
		parsed_cons = []

		# since last constraint also has a ";" at the end, we ignore last split
		for con_str in list_cons[:-1]:
			res = re.search(r"\s*(\w*) : \[(\d*), (-?\d*)\]", con_str)
			con_type = Cstr_type[res.group(1)]
			id1 = int(res.group(2))
			id2 = int(res.group(3))
			con = Cstr(con_type, id1, id2)
			parsed_cons.append(con)
		
		return parsed_cons

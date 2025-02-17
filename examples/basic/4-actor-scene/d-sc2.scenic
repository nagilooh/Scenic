# The original abstract scenario is IRREPRESENTIBLE.
# Thus we removed these constraints to make it representible
param constraints = " \
HASINFRONT : [2, 1]; \
HASINFRONT : [3, 0]; \
HASINFRONT : [3, 1]; \
HASINFRONT : [2, 0]; \
HASBEHIND : [0, 1]; \
HASINFRONT : [3, 2]; \
"
model scenic.simulators.carla.model

o1 = Car with color[0.7578125, 0.359375, 0.33203125]
ego = Car in SectorRegion(o1, 50, o1.heading, math.atan(2/5)), with color[0.734375, 0.72265625, 0.71484375]
o2 = Car in SectorRegion(ego, 50, ego.heading+math.pi, math.atan(2/5)).intersect(SectorRegion(o1, 50, o1.heading+math.pi, math.atan(2/5))), with color[0.29296875, 0.46484375, 0.61328125]
o3 = Car in SectorRegion(ego, 50, ego.heading+math.pi, math.atan(2/5)).intersect(SectorRegion(o1, 50, o1.heading+math.pi, math.atan(2/5))).intersect(SectorRegion(o2, 50, o2.heading+math.pi, math.atan(2/5))), with color[0.85546875, 0.74609375, 0.41015625]

require o1 can see ego
require o2 can see ego
require o2 can see o1
require o3 can see ego
require o3 can see o1
require o3 can see o2
require (distance from o2 to o1) <= 10 
require (distance from o3 to o2) <= 10 
require 10 <= (distance from o1 to ego) <= 20 
require 10 <= (distance from o2 to ego) <= 20 
require 10 <= (distance from o3 to o1) <= 20 
require 20 <= (distance from o3 to ego) <= 50 

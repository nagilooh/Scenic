param constraints = " \ONROAD : [0, -1]; \
ONROAD : [1, -1]; \
ONROAD : [2, -1]; \
ONROAD : [3, -1]; \
NOCOLLISION : [0, 1]; \
NOCOLLISION : [0, 2]; \
NOCOLLISION : [0, 3]; \
NOCOLLISION : [1, 2]; \
NOCOLLISION : [1, 3]; \
NOCOLLISION : [2, 3]; \
CANSEE : [1, 0]; \
CANSEE : [2, 0]; \
CANSEE : [2, 1]; \
CANSEE : [3, 0]; \
CANSEE : [3, 1]; \
CANSEE : [3, 2]; \
HASBEHIND : [0, 1]; \
HASBEHIND : [0, 2]; \
HASBEHIND : [0, 3]; \
HASBEHIND : [1, 2]; \
HASBEHIND : [1, 3]; \
HASBEHIND : [2, 3]; \
HASINFRONT : [1, 0]; \
HASINFRONT : [2, 0]; \
HASINFRONT : [2, 1]; \
HASINFRONT : [3, 0]; \
HASINFRONT : [3, 1]; \
HASINFRONT : [3, 2]; \
DISTCLOSE : [2, 1]; \
DISTCLOSE : [3, 2]; \
DISTMED : [1, 0]; \
DISTMED : [2, 0]; \
DISTMED : [3, 1]; \
DISTFAR : [3, 0]; \
"
model scenic.simulators.carla.model

ego = Car with color[0.734375, 0.72265625, 0.71484375]
o1 = Car with color[0.7578125, 0.359375, 0.33203125]
o2 = Car with color[0.29296875, 0.46484375, 0.61328125]
o3 = Car with color[0.85546875, 0.74609375, 0.41015625]

///@arg [magnitude,time]

var _s = instance_create_layer(0, 0, "META", obj_screenShake);

_s.magnitude = random_range(1, argument0[0]);
_s.time = argument0[1];
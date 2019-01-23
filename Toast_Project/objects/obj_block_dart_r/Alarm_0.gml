/// @description SHOOT

AMMO--;
var _dart = instance_create_depth(x+8, y+8, depth+10, obj_dart);
_dart.direction = dir*90;
make_smoke(10);

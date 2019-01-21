/// @description Shoot
var _ball = instance_create_depth((bbox_left+bbox_right)/2, (bbox_top+bbox_bottom)/2, depth+10, obj_cannonBall);

_ball.direction = dir*90;
_ball.creator = id;

make_smoke(5);

alarm[0] = timer;

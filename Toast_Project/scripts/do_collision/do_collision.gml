///@arg velocityArray
///@arg collide

var _vel = argument0
var _velx = _vel[0];
var _vely = _vel[1];


// Check if crushed
if instance_place(x, y, obj_solid) and argument1 
	truestate_switch(PLAYER.DIE)


// Check y collision and move
if instance_place(x, y+_vely, obj_solid) and argument1 {
	// Make the solid object you're standing on the ride object
	if (_vely > 0)
		myRide = instance_place(x, y+_vely, obj_solid);
	
	while !instance_place(x, y+sign(_vely), obj_solid) {
		y+=sign(_vely);
	}
	_vely = 0;
	y = round(y);
}
y += _vely;


// Check x collision and move
if instance_place(x+_velx, y, obj_solid) and argument1  {
	while !instance_place(x+sign(_velx), y, obj_solid) {
		x+=sign(_velx);
	}
	_velx = 0;
	x = round(x);
}
x += _velx;


_vel = [_velx, _vely];
return _vel;
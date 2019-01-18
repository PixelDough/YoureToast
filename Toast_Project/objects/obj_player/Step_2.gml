
// Ride movement
if myRide and collide {
	if myRide.velocity[1] != 0 {
		y -= bbox_bottom+1-myRide.bbox_top;
		while place_meeting(x, y, obj_solid)
			y -= sign(y-yprevious)
		velocity[1] = 0;
	}
	
	if myRide.velocity[0] != 0 {
		while place_meeting(x, y, obj_solid)
			x -= sign(x-xprevious)
		x += myRide.x-myRide.xprevious;
	}
}
if !instance_place(x, y+1, obj_solid) {
	myRide = noone;
}

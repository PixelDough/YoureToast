
var _laser = instance_place(x, y, obj_block_tesla)
if _laser {
	depth = depth>=_laser.depth ? depth-1 : depth;
}

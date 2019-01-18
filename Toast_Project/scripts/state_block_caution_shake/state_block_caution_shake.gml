//So, here's your basic state template

//STEP---------------------------------------
if(argument0==step)
{
	//This code will be executed during the step event.
	instance_create_depth(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), depth-10, obj_dust);
	if state_timer > 5 {
		truestate_switch(CAUTION.FALL);
	}
	
}
//DRAW---------------------------------------
else if(argument0==draw)
{
	//And this code will be exeucted during the draw event.
	draw_sprite(sprite_index, image_index, x+irandom_range(-1,1), y+irandom_range(-1,1));
}
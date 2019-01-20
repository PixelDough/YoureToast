//So, here's your basic state template

//STEP---------------------------------------
if(argument0==step)
{
	//This code will be executed during the step event.
	if state_timer == 0 {
		repeat(10) instance_create_depth(random_range(bbox_left, bbox_right), (bbox_bottom), depth-10, obj_dust);
		play_sound(snd_crumble);
	}
	if state_timer > 10 {
		truestate_switch(CAUTION.FALL);
	}
	
}
//DRAW---------------------------------------
else if(argument0==draw)
{
	//And this code will be exeucted during the draw event.
	draw_sprite(sprite_index, image_index, x+irandom_range(-1,1), y+irandom_range(-1,1));
}
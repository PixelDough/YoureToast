//So, here's your basic state template

//STEP---------------------------------------
if(argument0==step)
{
	//This code will be executed during the step event.
	image_speed = 0;
	image_index = 1;
	sprite_index = spr_player_die;
	mask_index = spr_mask_empty;
	
	if state_timer == 0
		velocity = [0, -7];
	
	velocity[1] += 0.18 + (xscale/100);
	y+=velocity[1];
	
	xscale+=0.25;
	yscale+=0.25;
	image_angle+=5;
	
	collide = false;
}
//DRAW---------------------------------------
else if(argument0==draw)
{
	//And this code will be exeucted during the draw event.
	
}
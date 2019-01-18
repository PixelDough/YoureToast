//So, here's your basic state template

//STEP---------------------------------------
if(argument0==step)
{
	//This code will be executed during the step event.
	image_speed = 1;
	if state_timer == 0
		image_index = 1;
	sprite_index = spr_player_walk;
}
//DRAW---------------------------------------
else if(argument0==draw)
{
	//And this code will be exeucted during the draw event.
	draw_self();
}
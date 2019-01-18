//So, here's your basic state template

//STEP---------------------------------------
if(argument0==step)
{
	//This code will be executed during the step event.
	image_index = velocity[1] > 0;
	sprite_index = spr_player_jump;
}
//DRAW---------------------------------------
else if(argument0==draw)
{
	//And this code will be exeucted during the draw event.
	
}
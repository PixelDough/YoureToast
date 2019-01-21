//So, here's your basic state template

//STEP---------------------------------------
if(argument0==step)
{
	//This code will be executed during the step event.
	if state_timer == 0
		image_index = 0;
	
	image_speed = 1;
	
	if floor(image_index) == image_number-1 {
		truestate_switch(DOOR.OPEN);
	}
	
}
//DRAW---------------------------------------
else if(argument0==draw)
{
	//And this code will be exeucted during the draw event.
	draw_self();
}
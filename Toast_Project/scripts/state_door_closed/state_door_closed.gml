//So, here's your basic state template

//STEP---------------------------------------
if(argument0==step)
{
	//This code will be executed during the step event.
	image_index = 0;
	image_speed = 0;
	
	if OPEN {
		truestate_switch(DOOR.OPENING);
	}
	
}
//DRAW---------------------------------------
else if(argument0==draw)
{
	//And this code will be exeucted during the draw event.
	draw_self();
	
}
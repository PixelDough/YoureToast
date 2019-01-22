//So, here's your basic state template

//STEP---------------------------------------
if(argument0==step)
{
	//This code will be executed during the step event.
	if instance_place(x, y-1, obj_player) {
		if obj_player.velocity[1] >= 0
			truestate_switch(CAUTION.SHAKE);
	}
	
}
//DRAW---------------------------------------
else if(argument0==draw)
{
	//And this code will be exeucted during the draw event.
	draw_self();
}
//So, here's your basic state template

//STEP---------------------------------------
if(argument0==step)
{
	//This code will be executed during the step event.
	velocity[1] += 0.18
	var _hit = instance_place(x, y+velocity[1], obj_block_caution)
	if _hit {
		with _hit {
			if state == CAUTION.WAIT
				truestate_switch(CAUTION.SHAKE)
		}
	}
	
}
//DRAW---------------------------------------
else if(argument0==draw)
{
	//And this code will be exeucted during the draw event.
	draw_self();
}
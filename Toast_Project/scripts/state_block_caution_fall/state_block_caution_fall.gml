//So, here's your basic state template

//STEP---------------------------------------
if(argument0==step)
{
	//This code will be executed during the step event.
	if velocity[1] > 0 {
		var _hit = instance_place(x, y+velocity[1], obj_solid)
		if _hit {
			play_sound(snd_land);
			with _hit {
				// If it hits a caution block
				if _hit.object_index == obj_block_caution {
					if state == CAUTION.WAIT
						truestate_switch(CAUTION.SHAKE)
				}
			}
		}
	}
	
	if !grounded()
		velocity[1] += 0.18
	
}
//DRAW---------------------------------------
else if(argument0==draw)
{
	//And this code will be exeucted during the draw event.
	draw_self();
}
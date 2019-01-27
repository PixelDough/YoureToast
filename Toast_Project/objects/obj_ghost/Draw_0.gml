
if sprite_exists(sprite_index) {
	//draw_sprite_shadow(0, 0, 1, c_aqua, 0.75)
	gpu_set_blendmode_ext(bm_inv_dest_colour, bm_zero);
	draw_rectangle_colour(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, c_white,c_white,c_white,c_white,false);
	gpu_set_blendmode(bm_normal);
	draw_self();
	gpu_set_blendmode_ext(bm_inv_dest_colour, bm_zero);
	draw_rectangle_colour(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, c_white,c_white,c_white,c_white,false);
	gpu_set_blendmode(bm_normal);
}


randomize();

global.fnt_text = font_add("m6x11.ttf", 24, false, false, 32, 128);

instance_create_layer(0, 0, "META", obj_console)

global.runTime_full = 0;

display_set_gui_size(768, 432)
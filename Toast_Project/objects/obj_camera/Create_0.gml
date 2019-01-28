
velocity = [0,0]

width = 512;
height = 288;

//width = 768;
//height = 432;

camWait = 120;

camera_set_view_size(view_camera[0], width, height)

x_off = 0;
y_off = 0;
x_shake = 0;
y_shake = 0;

gameScale = 2;
window_set_size(width*gameScale, height*gameScale)
alarm[0] = 1;

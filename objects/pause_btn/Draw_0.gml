
if instance_number(game_obj) >0{
if game_obj.yyy >= 1919{
x = camera_get_view_x(view_camera[0])+70
y = camera_get_view_y(view_camera[0])+70
}else{
x = 0
y = 0
}
}

draw_self()
draw_set_halign(fa_center);

if(global.pauza = 1){
	draw_sprite(screenShot,1,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));
	draw_sprite_ext(pause,1,camera_get_view_x(view_camera[0])+540,camera_get_view_y(view_camera[0])+960,3,3,0,c_white,1)
}
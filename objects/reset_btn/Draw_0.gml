if instance_number(game_obj) >0{
if game_obj.yyy >= 1919{
x = camera_get_view_x(view_camera[0])+1010
y = camera_get_view_y(view_camera[0])+70
}else{
x = 0
y = 0
}
}
draw_self()
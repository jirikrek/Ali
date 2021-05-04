if global.check_planet_coll = 0 {
x = obj_jack.x
y = obj_jack.y
}else{
x = global.Center_X
y = global.Center_Y
}
if global.start = 1 {
if xxx < 1079{
	xxx+=9
}

if yyy < 1919{
	yyy+=16
}else{
if global.start = 1 {
global.start = 2
}
}

}
camera_set_view_size(view_camera[0],xxx,yyy);
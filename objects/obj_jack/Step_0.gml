if sprite_index = Jack_jump 
{
if image_index > 12
{
sprite_index = Jack
}
}

global.jspeed = jack_speed
motion_set(point_direction(global.Center_X,global.Center_Y,x,y),jack_speed)

if global.check_orbit = 1{
cas_mimo = 0
global.check_planet_coll = 1

 if global.check_planet_coll = 1 {
	
	gravity = 0
	image_angle += global.angle_with_planet
	jack_speed = 0
	global.Angle = point_direction(x,y,(global.obj_dir_x),(global.obj_dir_y))-180
	global.Angle += global.angle_with_planet
	global.Angle = image_angle +90
	x = lengthdir_x(global.Orbit,global.Angle ) + global.Center_X;
	y = lengthdir_y(global.Orbit,global.Angle ) + global.Center_Y;
	
}
}else
{
	cas_mimo++
	if point_distance(x,y,instance_nearest(x,y,obj_planet1).x,instance_nearest(x,y,obj_planet1).y) < 400 {
image_angle = point_direction(x,y,instance_nearest(x,y,obj_planet1).x,instance_nearest(x,y,obj_planet1).y) + 90

	}
	
	if point_distance(x,y,instance_nearest(x,y,blackhole_obj).x,instance_nearest(x,y,blackhole_obj).y) < 400 {
image_angle = point_direction(x,y,instance_nearest(x,y,blackhole_obj).x,instance_nearest(x,y,blackhole_obj).y) + 90

	}
	
}

if x > room_width+200 or x < -200 or y > room_height+200 or y < -200 {
//game_restart()
}

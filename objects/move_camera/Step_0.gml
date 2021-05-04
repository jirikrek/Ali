if global.check_planet_coll = 0 {move_towards_point(obj_jack.x,obj_jack.y,25)
}else{
	if y < global.obj_dir_y and direction <180 and direction > 0  or y > global.obj_dir_y and direction <359 and direction > 180 {
			x = global.obj_dir_x
			y = global.obj_dir_y
}else{
	if point_distance(x,y,global.obj_dir_x,global.obj_dir_y) > 10
	{
	move_towards_point(global.obj_dir_x,global.obj_dir_y,12)
	}

	}
	}
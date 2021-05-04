
if global.start != 0 {image_angle +=  toceni }

if collision_circle(x,y,sprite_width/2-10,obj_jack,true,true) {
global.obj_dir_x = blackhole_obj.x
global.obj_dir_y = blackhole_obj.y
global.Center_X = blackhole_obj.x
global.Center_Y = blackhole_obj.y
global.check_orbit = 1
if global.start != 0 {global.angle_with_planet = toceni}
obj_jack.speed = 0
global.Orbit = sprite_height/2+20
obj_jack.sprite_index = Jack_flag

cas_na_vlajku++
if cas_na_vlajku > 150 {
	pocet_dohranych_her = pocet_dohranych_her +1
ini_open ( "jack.ini" );
ini_write_real("pocet_vyher", "pocet", pocet_dohranych_her );
ini_close();
game_restart()
}

}


	






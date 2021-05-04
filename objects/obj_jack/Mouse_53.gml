

if global.start = 0 
{
global.start = 1
}

if global.start = 2 and global.explosion = 0 and global.check_planet_coll and global.out_of_fuel = 1 and global.pauza = 0{

jack_speed = 25
global.check_orbit = 0
global.check_planet_coll = 0
motion_set(point_direction(global.Center_X,global.Center_Y,x,y),jack_speed)
sprite_index = Jack_jump
}


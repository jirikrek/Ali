

if global.pauza = 0 {

 if(!sprite_exists(screenShot)){
        screenShot = sprite_create_from_surface(application_surface,0,0,1080,1920,0,0,0,0);    
    }
	instance_deactivate_all(true)
	instance_activate_object(reset_btn)

	global.pauza = 1
	instance_create_depth(0,0,0,unpause_btn)
}


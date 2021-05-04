if mouse_y > camera_get_view_y(view_camera[0])+120 {
if global.pauza = 1 {
	 if(sprite_exists(pause_btn.screenShot)){
        sprite_delete(pause_btn.screenShot);
    }
instance_activate_all()
global.pauza = 0
instance_destroy()
}
}
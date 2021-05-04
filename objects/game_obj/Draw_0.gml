if global.start = 0  {
draw_sprite_ext(Jack,0,camera_get_view_x(view_camera[0])+238, camera_get_view_y(view_camera[0])+32,0.4,0.4,0,c_white,1)
draw_set_font(font_game)
draw_set_color(c_white)
draw_text(camera_get_view_x(view_camera[0])+270, camera_get_view_y(view_camera[0])+15,"=")
switch(string_length(pocet_dohranych_her) )
{

case 1 :
draw_text(camera_get_view_x(view_camera[0])+290, camera_get_view_y(view_camera[0])+15,pocet_dohranych_her)
break;

case 2 :
draw_text(camera_get_view_x(view_camera[0])+300, camera_get_view_y(view_camera[0])+15,pocet_dohranych_her)
break;

}

draw_text(camera_get_view_x(view_camera[0])+290, camera_get_view_y(view_camera[0])+150,"Would you help us") 
draw_text(camera_get_view_x(view_camera[0])+290, camera_get_view_y(view_camera[0])+190,"find our planet?") 
draw_sprite_ext(Jack,0,3000+randomx,49520+randomy,irange,irange,point_direction(3000+randomx,49520+randomy,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx1,49520+randomy1,irange1,irange1,point_direction(3000+randomx1,49520+randomy1,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx2,49520+randomy2,irange2,irange2,point_direction(3000+randomx2,49520+randomy2,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx3,49520+randomy3,irange3,irange3,point_direction(3000+randomx3,49520+randomy3,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx4,49520+randomy4,irange4,irange4,point_direction(3000+randomx4,49520+randomy4,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx5,49520+randomy5,irange5,irange5,point_direction(3000+randomx5,49520+randomy5,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx6,49520+randomy6,irange6,irange6,point_direction(3000+randomx6,49520+randomy6,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx7,49520+randomy7,irange7,irange7,point_direction(3000+randomx7,49520+randomy7,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx8,49520+randomy8,irange8,irange8,point_direction(3000+randomx8,49520+randomy8,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx9,49520+randomy9,irange9,irange9,point_direction(3000+randomx9,49520+randomy9,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx10,49520+randomy10,irange10,irange10,point_direction(3000+randomx10,49520+randomy10,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx11,49520+randomy11,irange11,irange11,point_direction(3000+randomx11,49520+randomy11,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx12,49520+randomy12,irange12,irange12,point_direction(3000+randomx12,49520+randomy12,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx13,49520+randomy13,irange13,irange13,point_direction(3000+randomx13,49520+randomy13,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx14,49520+randomy14,irange14,irange14,point_direction(3000+randomx14,49520+randomy14,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx15,49520+randomy15,irange15,irange15,point_direction(3000+randomx15,49520+randomy15,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx16,49520+randomy16,irange16,irange16,point_direction(3000+randomx16,49520+randomy16,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx17,49520+randomy17,irange17,irange17,point_direction(3000+randomx17,49520+randomy17,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx18,49520+randomy18,irange18,irange18,point_direction(3000+randomx18,49520+randomy18,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx19,49520+randomy19,irange19,irange19,point_direction(3000+randomx19,49520+randomy19,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx20,49520+randomy20,irange20,irange20,point_direction(3000+randomx20,49520+randomy20,3000,49520)+90,c_white,1)
draw_sprite_ext(Jack,0,3000+randomx21,49520+randomy21,irange21,irange21,point_direction(3000+randomx21,49520+randomy21,3000,49520)+90,c_white,1)
draw_set_font(font_game_tap)
draw_set_color(c_white)
draw_text(3000,49485+300,"Tap")
}

if global.start = 2 
{
 draw_sprite_ext(blackhole,0,camera_get_view_x(view_camera[0])+75, camera_get_view_y(view_camera[0])+350,0.2,0.2,0,c_white,1)
 draw_sprite_ext(Jack,0,camera_get_view_x(view_camera[0])+75, camera_get_view_y(view_camera[0])+obj_jack.y/40+350,0.5,0.5,0,c_white,1)
}
 
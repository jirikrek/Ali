global.sprite = 0
global.last_sprite = 0
global.start = 0
depth = -200
randomize()
y = room_height
x = room_width/2
i = 1
xxx = 540
yyy = 960


irange = random_range(0.2,0.6)
irange1 = random_range(0.2,0.6)
irange2 = random_range(0.2,0.6)
irange3 = random_range(0.2,0.6)
irange4 = random_range(0.2,0.6)
irange5 = random_range(0.2,0.6)
irange6 = random_range(0.2,0.6)
irange7 = random_range(0.2,0.6)
irange8 = random_range(0.2,0.6)
irange9 = random_range(0.2,0.6)
irange10 = random_range(0.2,0.6)
irange11 = random_range(0.2,0.6)
irange12 = random_range(0.2,0.6)
irange13 = random_range(0.2,0.6)
irange14 = random_range(0.2,0.6)
irange15 = random_range(0.2,0.6)
irange16 = random_range(0.2,0.6)
irange17 = random_range(0.2,0.6)
irange18 = random_range(0.2,0.6)
irange19 = random_range(0.2,0.6)
irange20 = random_range(0.2,0.6)
irange21 = random_range(0.2,0.6)
randomx = random_range(-120,120)
randomy = random_range(-120,120)
randomx1 = random_range(-120,120)
randomy1 = random_range(-120,120)
randomx2 = random_range(-120,120)
randomy2 = random_range(-120,120)
randomx3 = random_range(-120,120)
randomy3 = random_range(-120,120)
randomx4 = random_range(-120,120)
randomy4 = random_range(-120,120)
randomx5 = random_range(-120,120)
randomy5 = random_range(-120,120)
randomx6 = random_range(-120,120)
randomy6 = random_range(-120,120)
randomx7 = random_range(-120,120)
randomy7 = random_range(-120,120)
randomx8 = random_range(-120,120)
randomy8 = random_range(-120,120)
randomx9 = random_range(-120,120)
randomy9 = random_range(-120,120)
randomx10 = random_range(-120,120)
randomy10 = random_range(-120,120)
randomx11 = random_range(-120,120)
randomy11 = random_range(-120,120)
randomx12 = random_range(-120,120)
randomy12 = random_range(-120,120)
randomx13 = random_range(-120,120)
randomy13 = random_range(-120,120)
randomx14 = random_range(-120,120)
randomy14 = random_range(-120,120)
randomx15 = random_range(-120,120)
randomy15 = random_range(-120,120)
randomx16 = random_range(-120,120)
randomy16= random_range(-120,120)
randomx17 = random_range(-120,120)
randomy17 = random_range(-120,120)
randomx18 = random_range(-120,120)
randomy18 = random_range(-120,120)
randomx19 = random_range(-120,120)
randomy19 = random_range(-120,120)
randomx20 = random_range(-120,120)
randomy20 = random_range(-120,120)
randomx21 = random_range(-120,120)
randomy21 = random_range(-120,120)
xx = 0
yy = 0
last_y = room_height - 480
last_x = 3000
dalsi_y = room_height - 480



  //////////jack///////////////
 instance_create_depth(last_x,last_y-100,-2,obj_jack)
	/////////for loop////////////
	for (i = 0; i < 49; i += 1)
   {
	    if last_x + xx < 300 {xx = xx+ 250}
		if last_x + xx > 5700 {xx = xx- 250}
		if i = 0 {
		 instance_create_depth(last_x + xx,dalsi_y - yy,-1 , obj_planet1)
		 instance_create_depth(last_x + xx,dalsi_y - yy+5,-1 , move_camera)
		}else{
		 instance_create_depth(last_x + xx,room_height-(dalsi_y*i+yy),-1 , obj_planet1)
		}
		

dalsi_y = 1000
last_x = last_x +xx
last_y = last_y +yy
yy = random_range(350,500)
xx = random_range(-450,450)
	
   }
	////////forloopend///////////
if i = 49 {
		 instance_create_depth(last_x + xx,room_height-(dalsi_y*i+yy),-1 , blackhole_obj)
		}
		
ini_open ( "jack.ini" );
if !ini_section_exists("pocet_vyher")
{
   ini_write_real("pocet_vyher", "pocet", 0 );
}
ini_close();


ini_open ( "jack.ini" );
pocet_dohranych_her =  ini_read_real("pocet_vyher", "pocet", 0 );
ini_close();


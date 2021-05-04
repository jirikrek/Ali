vyber = random_range(1,4)
alpha = 0
i = 0
if vyber < 3 {
	toceni = random_range(-3.5,-2)
}else{
toceni = random_range(3.5,2)
}
vysavani =0
size = 0

obrazek1 = 0
xscale = 0
yscale = 0
max_virus = 0
width = 0
height = 0
global.sprite = irandom_range(1,8)

if global.last_sprite != global.sprite {
global.last_sprite = global.sprite
}else{
	if global.sprite  = 8 { 
	global.sprite = global.sprite - 1
	global.last_sprite = global.sprite
}else{
	global.sprite = global.sprite + 1
	global.last_sprite = global.sprite
}
}
if instance_number(obj_planet1) < 2 {
size = 0.8
}else{
size = random_range(0.8,1.4)
}
start_vysavani = 0

switch(global.sprite)
{
case 1:
sprite_index = planet1
max_virus = 175*size
image_xscale = size
image_yscale = image_xscale
break;
case 2:
sprite_index = planet2
max_virus = 175*size
image_xscale = size
image_yscale = image_xscale
break;

case 3:
sprite_index = planet3
max_virus = 167*size
image_xscale = size
image_yscale = image_xscale
break;
case 4:
sprite_index = planet4
max_virus = 175*size
image_xscale = size
image_yscale = image_xscale
break;
case 5:
sprite_index = planet5
max_virus = 177*size
image_xscale = size
image_yscale = image_xscale
break;
case 6:
sprite_index = planet6
max_virus = 171*size
image_xscale = size
image_yscale = image_xscale
break;
case 7:
sprite_index = planet7
max_virus = 171*size
image_xscale = size
image_yscale = image_xscale
break;
case 8:
sprite_index = planet8
max_virus = 178*size
image_xscale = size
image_yscale = image_xscale
break;


}


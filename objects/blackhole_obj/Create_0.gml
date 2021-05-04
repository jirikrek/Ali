////
//global.coll_port = 0
Orbit =1
vyber = random_range(1,4)
if vyber < 3 {
	toceni = random_range(-3.5,-2)
}else{
toceni = random_range(3.5,2)
}

cas_na_vlajku = 0
i=0

ini_open ( "jack.ini" );
pocet_dohranych_her = ini_read_real("pocet_vyher", "pocet", 0 );
ini_close();

////
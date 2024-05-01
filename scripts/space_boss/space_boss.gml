// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function space_boss(){
	//
	var _boss = irandom_range(0,1);
	switch(_boss){
		case 0: 
			instance_create_layer(room_width / 2, room_height/2, "Instances", obj_space_boss_gunner);
			break;
		case 1:
		 	instance_create_layer(room_width / 2, room_height/2, "Instances", obj_space_boss_carrier);
			break;
	}

}
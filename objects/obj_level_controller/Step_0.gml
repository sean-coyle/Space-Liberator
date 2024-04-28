/// @description Insert description here

if(isEnabled){
	switch(global.level){
		case -3: room_goto(rm_main_menu) break;
		case -2: room_goto(Tutorial) break;
		case -1: room_goto(rmPlayerBaseShip) break;
		case 0: room_goto(rmP1Space); break;
		case 1: room_goto(rmP1Ground); break;
		case 2: room_goto(rmP2Space); break;
		case 3: room_goto(rmP2Ground); break;
		case 4: room_goto(rmP3Space); break;
		case 5: room_goto(rmP3Ground); break;
		case 6: room_goto(rmWin);
		case 7: room_goto(rmLoss)
	}
}




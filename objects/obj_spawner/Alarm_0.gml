/// @description Insert description here
// You can write your code in this editor

var _loops = 1
if _first_spawn { // spawns 5 enemies when the first spawn event occurs
	 _loops = 5
}

_loops *= global.difficulty

for (var _i = 0; _i < _loops; _i+=1) {
	var _rand = random_range(0,1)

	var _rand_x = irandom_range(0, room_width)
	var _rand_y = irandom_range(0, room_height)

	if _rand <= enemy_chance{
		instance_create_layer(_rand_x,_rand_y,"Instances",enemy_1)
	}
	else {
		instance_create_layer(_rand_x,_rand_y,"Instances",enemy_2)
	}
}

	
alarm[0] = spawn_rate
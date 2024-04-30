/// @description Insert description here
// You can write your code in this editor

var _rand = random_range(0,1)


if _rand <= enemy_chance{
	instance_create_layer(x,y,"Instances",enemy_1)
}
else {
	instance_create_layer(x,y,"Instances",enemy_2)
}

alarm[0] = spawn_rate

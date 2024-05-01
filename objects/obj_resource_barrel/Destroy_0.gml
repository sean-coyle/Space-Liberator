/// @description Insert description here
// You can write your code in this editor

var _rand = irandom_range(1,5)

for (var i = 0; i <= _rand; i += 1){
	var _rand_x = irandom_range(5,10)
	var _rand_y = irandom_range(5,10)
	
	instance_create_layer(x+_rand_x, y+_rand_y, layer, resource_type)
}

// Inherit the parent event
event_inherited();


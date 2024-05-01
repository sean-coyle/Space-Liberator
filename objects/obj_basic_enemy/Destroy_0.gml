/// @description Insert description here
// You can write your code in this editor

// oh no... i died
// so lets do something here

/*
if instance_exists(obj_enemy_spawner) {
	obj_enemy_spawner.remaining_enemies--
}*/
global.enemiesDestroyed += 1;

var _rand = random_range(0,1)

if _rand <= health_drop_chance {
	instance_create_layer(x,y,layer,obj_health_pickup)
}

_rand = random_range(0,1)

if _rand <= ammo_drop_chance {
	instance_create_layer(x,y,layer,obj_ammo_pickup)
}
/// @description Insert description here
// You can write your code in this editor

_safe_distance = distance_goal - 50
_can_fire_weapon = true

_facing_direction = direction

_prim_weapon = instance_create_layer(x,y, "Instances", primary_weapon, {owner: object_index})

// Inherit the parent event
event_inherited();


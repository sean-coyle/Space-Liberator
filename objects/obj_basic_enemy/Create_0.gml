/// @description Insert description here
// You can write your code in this editor

alarm[0] = attack_speed
is_stunned = false

_facing_direction = 0

// This list contains the IDs of entities who have hit the enemy
// Check if an entity has previously hit before allowing for it to deal damage again
hit_by = ds_list_create()

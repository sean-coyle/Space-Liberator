// Apply Upgrades
max_hp *= global.health_multiplier
show_debug_message("Max Health: {0}", max_hp)
enum STATES{
	TALKING,
	REGULAR, // default is a keyword :(
}

state = STATES.REGULAR

_facing_direction = 0

// This holds the ID of the weapon being used
current_weapon = 0

_prim_weapon = instance_create_layer(x,y, "Instances", primary_weapon, {owner: object_index})
_seco_weapon = instance_create_layer(x,y, "Instances", secondary_weapon, {owner: object_index, visible:false})

current_weapon = _prim_weapon.id

// This list contains the IDs of entities who have hit the enemy
// Check if an entity has previously hit before allowing for it to deal damage again
hit_by = ds_list_create()

_interaction_object = -1
_smallest_distance = interaction_distance

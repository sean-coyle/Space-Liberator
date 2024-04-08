enum STATES{
	FISHING,
	TALKING,
	REGULAR, // default is a keyword :(
}

state = STATES.REGULAR

_facing_direction = 0

is_firing_primary = false
alarm[0] = 0

is_firing_secondary = false
alarm[1] = 0

// This list contains the IDs of entities who have hit the enemy
// Check if an entity has previously hit before allowing for it to deal damage again
hit_by = ds_list_create()
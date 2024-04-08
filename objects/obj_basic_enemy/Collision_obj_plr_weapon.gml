/// @description Insert description here
// You can write your code in this editor

if ds_list_find_index(hit_by, other.id) == -1 {
	hp -= other.damage
	ds_list_add(hit_by, other.id)
}

// instance_destroy(other)

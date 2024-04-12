if ds_list_find_index(hit_by, other.id) == -1 {
	hp -= other.damage
	ds_list_add(hit_by, other.id)
}

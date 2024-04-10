// ensures that the same entity does not harm them twice
// this is needed because the damaging entity is not immediately deleted
// so without this it would do damage every frame

if ds_list_find_index(hit_by, other.id) == -1 {
	hp -= other.damage
	ds_list_add(hit_by, other.id)
}


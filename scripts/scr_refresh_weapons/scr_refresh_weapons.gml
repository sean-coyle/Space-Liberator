// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_refresh_weapons(_select_primary){
	_select_primary = is_undefined(_select_primary) ? 1:_select_primary
	
	instance_destroy(obj_player_parent._prim_weapon)
	obj_player_parent._prim_weapon = instance_create_layer(x,y, "Instances", global.grnd_primary, {owner: obj_player_parent.object_index})

	instance_destroy(obj_player_parent._seco_weapon)
	obj_player_parent._seco_weapon = instance_create_layer(x,y, "Instances", global.grnd_secondary, {owner: obj_player_parent.object_index, visible:false})
	
	if _select_primary {
		obj_player_parent.current_weapon = obj_player_parent._prim_weapon.id
		obj_player_parent._prim_weapon.visible = true
		obj_player_parent._seco_weapon.visible = false
	}
	else {
		obj_player_parent.current_weapon = obj_player_parent._seco_weapon.id
		obj_player_parent._prim_weapon.visible = false
		obj_player_parent._seco_weapon.visible = true
	}
	
}
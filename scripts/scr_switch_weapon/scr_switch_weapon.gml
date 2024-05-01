// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_switch_weapon(){
	var _weapon = weapon 
	var _is_primary = is_primary 
	var _is_ground = is_ground
	show_debug_message("_is_primary: {0}", is_primary)
	if _is_primary {
		if (_is_ground) global.grnd_primary = _weapon
		else global.spc_primary  = _weapon
	}
	else {
		if (_is_ground) global.grnd_secondary = _weapon
		else global.spc_secondary = _weapon
	}
	
	scr_refresh_weapons(_is_primary)
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_upgrade() {
	if global.gold_owned >= cost_gold {
		if global.lithium_owned >= cost_lithium {
			if is_health {
				global.health_multiplier = 2
			} else {
				global.max_ammo_multiplier = 2
			}
			
		}
	}
}
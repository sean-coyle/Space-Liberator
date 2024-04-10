
// picks up ammo but clamps it to the max amount for that weapon
function wpn_pickup_ammo(_amount){
	_held_ammo += _amount;
	_held_ammo = clamp(_held_ammo, 0, max_ammo);
}
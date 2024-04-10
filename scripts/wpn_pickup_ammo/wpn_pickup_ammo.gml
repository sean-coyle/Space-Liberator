
// picks up ammo but clamps it to the max amount for that weapon
function wpn_pickup_ammo(_amount){
	_ammo_count += _amount;
	_ammo_count = clamp(_ammo_count, 0, max_ammo);
}
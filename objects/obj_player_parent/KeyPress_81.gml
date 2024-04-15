if current_weapon == _prim_weapon.id { // if current weapon is primary, switch to secondary
	current_weapon = _seco_weapon.id
	_prim_weapon.visible = false
	_seco_weapon.visible = true
}
else { // if current weapon is secondary, switch to primary
	current_weapon = _prim_weapon.id
	_seco_weapon.visible = false
	_prim_weapon.visible = true
}
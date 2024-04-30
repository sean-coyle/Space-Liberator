/// @description Insert description here
// You can write your code in this editor

if other._prim_weapon._held_ammo != other._prim_weapon.max_ammo {
	other._prim_weapon._held_ammo = other._prim_weapon.max_ammo

	other._seco_weapon._held_ammo = other._seco_weapon.max_ammo
	
	instance_destroy()

}




if obj_player_parent.current_weapon == id {
	if not obj_player_parent.is_disabled {
		if mouse_check_button(mb_left)  {
			wpn_shoot()
			wpn_reload()
		}
	}
}
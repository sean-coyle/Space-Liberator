// THIS SHOULD ONLY BE CALLED BY obj_plr_weapon OR ITS CHILDREN

function wpn_reload(){
	var _need = mag_size - _ammo_count
			
	if _held_ammo >= _need {
		_ammo_count += _need
		_held_ammo -= _need
				
	} else {
		_ammo_count += _held_ammo
		_held_ammo = 0
	}
	
	audio_play_sound(snd_reload, 1, false);
}
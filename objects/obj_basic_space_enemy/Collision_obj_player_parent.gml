// checks if alarm has gone off
if !alarm[0] {
	// knock back after hitting player
	is_stunned = true
	alarm[1] = stun_timer
	
	direction = point_direction(x, y, other.x, other.y)+180
	speed = knock_back_amount
	speed = lerp(speed, spd, 0.5)

	//deal_damage(obj_player, attack_damage)
	other.hp -= attack_damage
	
	alarm[0] = attack_speed
}

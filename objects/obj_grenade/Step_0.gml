


// this will prevent jitter of the grenade
if point_distance(x,y,dest_x,dest_y) < speed {
	x = dest_x
	y = dest_y
	speed = 0
} else {
	move_towards_point(dest_x, dest_y, speed)
}

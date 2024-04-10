// this will prevent jitter of the grenade
if point_distance(x,y,dest_x,dest_y) < speed { // ignore that it claims dest_* dont exist
	instance_destroy()
} else {
	move_towards_point(dest_x, dest_y, speed)
}

// this will prevent jitter of the grenade
if point_distance(x,y,dest_x,dest_y) < speed {
	instance_create_layer(x,y,"Instances", obj_explosion, expl_props);
	instance_destroy()
} else {
	move_towards_point(dest_x, dest_y, speed)
}

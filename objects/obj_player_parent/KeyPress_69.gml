
// Find if any interactable object is within range
with(obj_interactable){
	var _interactable_dist = point_distance(x,y, obj_player_parent.x, obj_player_parent.y); //get the distance from object to player
	
	if(_interactable_dist < obj_player_parent.interaction_distance){ 
		if (_interactable_dist < obj_player_parent._smallest_distance) {
			obj_player_parent._interaction_object = id
		}
	} 
}
if _interaction_object != -1 {
	with (_interaction_object) {
		action_script()
	}
}
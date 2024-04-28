/// @description Insert description here
// You can write your code in this editor
if(space_enemies_remaining == 0){
	
	
	var _camera = camera_get_active();


	var _view_width = camera_get_view_width(_camera);
	var _view_height = camera_get_view_height(_camera);

	
	var _sprite = spr_button;

	// Center position for the sprite
	var _spr_x = _view_width/ 2;
	var _spr_y = _view_height / 2;

	
	draw_sprite(_sprite, 0, _spr_x, _spr_y);

	
	var _txt = "Mission Completed";
	var _txt2 = "Landing In Progress";

	
	var _txt_w = string_width(_txt);
	var _txt_h = string_height(_txt);

	
	var _txt_x = (_view_width / 2);
	var _txt_y = _spr_y - 16; 

	
	draw_text(_txt_x, _txt_y, _txt);

	
	var _txt2_y = _txt_y + _txt_h + 10; 

	draw_text(_txt_x, _txt2_y, _txt2);

}
/// @description Insert description here
// You can write your code in this editor

draw_self();


var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);


var hud_offset_x = 10;
var hud_offset_y = 10; 


var health_bar_x = view_x + hud_offset_x; 
var health_bar_y = view_y + hud_offset_y;


var health_bar_width = 100;
var health_bar_height = 20;


draw_set_color(c_black); 
draw_rectangle(
    health_bar_x, 
    health_bar_y, 
    health_bar_x + health_bar_width, 
    health_bar_y + health_bar_height, 
    false
);

draw_set_color(c_red); 
var current_health_width = (hp / 100) * health_bar_width; 
draw_rectangle(
    health_bar_x, 
    health_bar_y, 
    health_bar_x + current_health_width, 
    health_bar_y + health_bar_height, 
    false
);


draw_set_color(c_white);
var ammo_x = health_bar_x + 80;
var ammo_y = health_bar_y + 470;
draw_text(ammo_x, ammo_y, ("Ammo: " + string(self.current_weapon._ammo_count) + " / " + string(self.current_weapon._held_ammo)));
if(instance_exists(obj_space_player)){
	draw_text(ammo_x, ammo_y + 20, ("Rocket: " + string(self.secondary_weapon._ammo_count) + " / " + string(self.secondary_weapon._held_ammo)));
}

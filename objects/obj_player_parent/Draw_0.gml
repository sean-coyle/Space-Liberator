/// @description Insert description here
// You can write your code in this editor
// Player object Draw event
// Call the parent draw function if needed
draw_self();

// Get the viewport's top-left coordinates
var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

// Define HUD position relative to the viewport
var hud_offset_x = 10; // Horizontal offset for the HUD from the viewport's top-left corner
var hud_offset_y = 10; // Vertical offset for the HUD from the viewport's top-left corner

// Position of the health bar
var health_bar_x = view_x + hud_offset_x; 
var health_bar_y = view_y + hud_offset_y;

// Dimensions of the health bar
var health_bar_width = 100; // Full width of the health bar
var health_bar_height = 20; // Height of the health bar

// Draw the health bar's background
draw_set_color(c_black); // Background color
draw_rectangle(
    health_bar_x, 
    health_bar_y, 
    health_bar_x + health_bar_width, 
    health_bar_y + health_bar_height, 
    false
);

// Draw the filled portion based on health
draw_set_color(c_red); // Color for the health bar
var current_health_width = (hp / 100) * health_bar_width; // Health-based width
draw_rectangle(
    health_bar_x, 
    health_bar_y, 
    health_bar_x + current_health_width, 
    health_bar_y + health_bar_height, 
    false
);

// Draw the ammo counter below the health bar
draw_set_color(c_white); // Text color
var ammo_x = health_bar_x; // Horizontal position for the ammo counter
var ammo_y = health_bar_y + health_bar_height + 10; // Vertical position for the ammo counter
draw_text(ammo_x, ammo_y, ("Ammo: " + string(self.current_weapon._ammo_count) + " / " + string(self.current_weapon._held_ammo)));


/// @description Insert description here
// You can write your code in this editor

//app_width = surface_get_width(application_surface)
//app_height = surface_get_height(application_surface)

//application_surface_draw_enable(false)
//surf = surface_create(app_width, app_height)


shdr_uni_color_selection = shader_get_uniform(sh_player_customization, "color_selection")

primary_weapon = global.grnd_primary
secondary_weapon = global.grnd_secondary

// Inherit the parent event
event_inherited();


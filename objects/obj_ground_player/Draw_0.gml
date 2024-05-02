/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

shader_set(sh_player_customization)
shader_set_uniform_f(shdr_uni_color_selection, global.plr_color[0],  global.plr_color[1], global.plr_color[2])
draw_self()
shader_reset()


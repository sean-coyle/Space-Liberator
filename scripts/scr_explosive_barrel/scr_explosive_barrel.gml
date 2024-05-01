// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_explosive_barrel(){
	image_blend = make_color_rgb(150,90,30)
	alarm[1] = 25
	
	_has_been_setoff = true
	alarm[0] = explosion_delay
}
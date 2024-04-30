// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_explosive_barrel(){
	instance_create_layer(x,y,layer, obj_explosion_large)
	
	instance_destroy()
}
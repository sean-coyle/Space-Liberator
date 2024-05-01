/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_font(fn_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x,y - 20, "SCORE");
draw_text(x - 10, y + 20, "Levels Cleared: " + string(global.lastWinLevel) + "/6");
var _resources_collected = global.gold_owned + global.lithium_owned;
draw_text(x- 10, y + 40, "Resources Owned: " + string(_resources_collected));
draw_text(x - 10, y + 60, "Enemies Destroyed: " + string(global.enemiesDestroyed));
var _score = global.lastWinLevel * 100 + global.enemiesDestroyed * 10 + _resources_collected * 5;

draw_text(x - 10, y + 80, "Score: " + string(_score));

draw_set_halign(fa_left);
draw_set_valign(fa_top);










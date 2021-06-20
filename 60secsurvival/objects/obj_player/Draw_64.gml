

// UI
draw_set_halign(fa_left);
draw_set_valign(fa_top);




// A: heart
// B: house
// C: music
// D: rock
// E: log
// Gaps of 8
draw_set_halign(fa_left);
draw_set_valign(fa_top);


// Rewrite this better lmao
var healthhhhh = 0;
if (healthh < 1) { healthhhhh = ""; dead = true; }
if (healthh == 1) { healthhhhh = "A"; }
if (healthh == 2) { healthhhhh = "AA"; }
if (healthh == 3) { healthhhhh = "AAA"; }
draw_text(8,view_get_hport(0)-12,healthhhhh);


if (hurtTimer < hurtTimerMAX)
{
	hurtTimer++;
	draw_sprite_ext(spr_wall,0,view_get_wport(0)/2,view_get_hport(0)/2,1000,1000,0,c_white,0.1);
}




if (dead)
{
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center);
	obj_darken.alpha = 0.7;
	obj_darken.visible = true;
	if (_obj_game_manager.nightsSurvived == 1)
	{
		draw_text_color(view_get_wport(0)/2,view_get_hport(0)/2-16,string(_obj_game_manager.nightsSurvived)+" night survived",c_white,c_white,c_white,c_white,1);
	}
	else
	{
		draw_text_color(view_get_wport(0)/2,view_get_hport(0)/2-16,string(_obj_game_manager.nightsSurvived)+" nights survived",c_white,c_white,c_white,c_white,1);
	}
	draw_text_color(view_get_wport(0)/2,view_get_hport(0)/2+20,"press r to restart",c_white,c_white,c_white,c_white,1);
	draw_text_color(view_get_wport(0)/2,view_get_hport(0)/2+32,"press t to return to menu",c_white,c_white,c_white,c_white,1);
}
else
{
	draw_set_halign(fa_right);
	draw_text(view_get_wport(0)-4,view_get_hport(0)-12,string(_obj_game_manager.nightsSurvived));
}
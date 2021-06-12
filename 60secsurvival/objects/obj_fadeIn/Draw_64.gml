

if (fadeIn)
{
	fadeInTimer++;
	if (fadeInTimer > 60)
	{
	fade -= 0.02;
	fade1 -= 0.03;
	}
}



depth = -10000;
draw_sprite_ext(spr_darken,0,0,0,100,100,0,c_white,fade);

if (fade < 0) { instance_destroy(); }



draw_set_valign(fa_middle)
draw_set_halign(fa_center);
draw_text_color(view_get_wport(0)/2,view_get_hport(0)/2,quote,c_white,c_white,c_white,c_white,fade1);
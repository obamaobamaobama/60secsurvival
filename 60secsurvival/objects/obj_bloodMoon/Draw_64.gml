

if (fadeIn)
{
	alpha += 0.050;
	if (alpha > 1)
	{
		fadeIn = false;
	}
}
else
{
	alpha -= 0.025;
	if (alpha < 0.5 && !music)
	{
		//music = true;
		//audio_play_sound(bgm_psycho_robot_cannibals,1,true);
		//audio_play_sound(bgm_psycho_robot_cannibals2,1,true);
	}
	
	if (alpha < 0.1)
	{
		instance_destroy();
	}
	
	if (alpha < 0) { alpha = 0.05; }
}


var rr1 = random_range(-4,4);
var rr2 = random_range(-4,4);
draw_sprite_ext(sprite_index,0,(view_get_wport(0)/2)+rr1,(view_get_hport(0)/2)+rr2,1,1,0,c_white,alpha);
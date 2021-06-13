

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
	
	if (alpha < 0)
	{
		instance_destroy();
	}
}


var rr = random_range(-8,8);
draw_sprite_ext(sprite_index,0,(view_get_wport(0)/2)+rr,(view_get_hport(0)/2)+rr,1,1,0,c_white,alpha);
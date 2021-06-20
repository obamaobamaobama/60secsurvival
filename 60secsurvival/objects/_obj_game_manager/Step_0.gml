

// BIT OF A HUGE MESS BUT IDC LOL

audio_sound_gain(bgm_The_Unknown,_audioBGMcurrent*_audioBGMlevelPlayer,50);
audio_sound_gain(bgm_The_Unknown2,_audioBGMcurrent2*_audioBGMlevelPlayer,50);

audio_sound_gain(bgm_psycho_robot_cannibals,_audioBGMcurrent*_audioBGMlevelPlayer,50);
audio_sound_gain(bgm_psycho_robot_cannibals2,_audioBGMcurrent2*_audioBGMlevelPlayer,50);



if (keyboard_check_pressed(ord("1")))
{
	if (_audioBGMlevelPlayer > 0)
	{
		_audioBGMlevelPlayer -= 0.1;
		audio_sound_gain(bgm_death,_audioBGMlevelPlayer,50);
		audio_sound_gain(bgm_title,_audioBGMlevelPlayer,50);
		
	}
}


if (keyboard_check_pressed(ord("2")))
{
	if (_audioBGMlevelPlayer < 1)
	{
		_audioBGMlevelPlayer += 0.1;
		audio_sound_gain(bgm_death,_audioBGMlevelPlayer,50);
		audio_sound_gain(bgm_title,_audioBGMlevelPlayer,50);
	}
}







if (keyboard_check_pressed(ord("3")))
{
	if (_audioSFXlevelPlayer > 0)
	{
		_audioSFXlevelPlayer -= 0.1;
		audio_sound_gain(sfx_attack1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_attack2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_attack3,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_churchBell,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_doorbell1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_doorbell2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead3,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead4,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead5,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead6,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead7,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_footstep1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_footstep2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt3,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt4,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt5,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt6,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt7,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt8,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_kiss,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_ngcheck,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_pop1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_pop2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_popHouse1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_popHouse2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_popHouse3,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_popHouse4,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_rock1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_rock2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_rock3,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_rock4,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_tree1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_tree2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_tree3,_audioSFXlevelPlayer,50);
	}
}


if (keyboard_check_pressed(ord("4")))
{
	if (_audioSFXlevelPlayer < 1)
	{
		_audioSFXlevelPlayer += 0.1;
		audio_sound_gain(sfx_attack1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_attack2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_attack3,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_churchBell,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_doorbell1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_doorbell2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead3,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead4,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead5,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead6,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_enemyDead7,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_footstep1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_footstep2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt3,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt4,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt5,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt6,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt7,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_hurt8,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_kiss,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_ngcheck,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_pop1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_pop2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_popHouse1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_popHouse2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_popHouse3,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_popHouse4,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_rock1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_rock2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_rock3,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_rock4,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_tree1,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_tree2,_audioSFXlevelPlayer,50);
		audio_sound_gain(sfx_tree3,_audioSFXlevelPlayer,50);
	}
}
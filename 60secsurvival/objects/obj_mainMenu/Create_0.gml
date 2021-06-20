//audio_play_sound(bgm_title,10,true)
audio_play_sound(sfx_ngcheck, 1, false);
audio_play_sound(bgm_title, 1, true);
_obj_game_manager.nightsSurvived = 0;




if (_obj_ngbaby.ngLoggedIn)
{
	ng_connect(_obj_ngbaby.NG_app_id, _obj_ngbaby.NG_encrpyt_id);
	ng_initialize_medals_and_scoreboard();
}
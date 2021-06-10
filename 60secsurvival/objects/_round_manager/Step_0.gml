

// Add 1 per second
secondsInRound += 1/room_speed;


var secondsRemaining = secondsBeforeNight - secondsInRound
show_debug_message(secondsRemaining);



if (secondsRemaining < 0 && !night)
{
	audio_stop_sound(bgm_The_Unknown);
	//audio_play_sound(bgm_psycho_robot_cannibals,1,true);
	instance_destroy(obj_darken);
	night = true;
	
	// Change this later to a more random spawn
	instance_create_depth(room_width/2, room_height/2, -1, obj_enemy);
}
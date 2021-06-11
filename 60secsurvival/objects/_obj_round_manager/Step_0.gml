

// Add 1 per second
secondsInRound += 1/room_speed;


var secondsRemaining = secondsBeforeNight - secondsInRound
//show_debug_message(secondsRemaining);



if (secondsRemaining < 0 && !night)
{
	audio_stop_sound(bgm_The_Unknown);
	//audio_play_sound(bgm_psycho_robot_cannibals,1,true);
	instance_destroy(obj_darken);
	night = true;
	
	// Change this later to a more random spawn
	instance_create_depth(room_width/2, room_height/2, -1, obj_enemy);
}



if (decideTotalTimer < decideTotalTimerMAX)
{
	decideTotalTimer++
	houseRequiresXrocks = floor(round(houseRequiresXrocks)/5)*5;
	houseRequiresXwood = floor(round(houseRequiresXwood)/5)*5;
	
	if (instance_number(obj_house) != 0)
	{
	obj_house.tier1 = ((houseRequiresXrocks+houseRequiresXwood)/4)*1;
	obj_house.tier2 = ((houseRequiresXrocks+houseRequiresXwood)/4)*2;
	obj_house.tier3 = ((houseRequiresXrocks+houseRequiresXwood)/4)*3;
	obj_house.tier4 = houseRequiresXrocks+houseRequiresXwood;
	}
}



show_debug_message("have" + string(houseAmountOfRocks+houseAmountOfWood));
if (instance_number(obj_house) != 0)
{
show_debug_message("house" + string(obj_house.tier4));
}
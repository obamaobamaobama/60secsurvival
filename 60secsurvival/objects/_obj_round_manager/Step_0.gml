

// Add 1 per second
if (instance_number(obj_fadeIn) == 0)
{
secondsInRound += 1/room_speed;
}


var secondsRemaining = secondsBeforeNight - secondsInRound
//show_debug_message(secondsRemaining);



if (secondsRemaining < 0 && !night)
{
	audio_stop_sound(bgm_The_Unknown);
	audio_stop_sound(bgm_The_Unknown2);
	instance_create_depth(x,y,-1,obj_bloodMoon);
	audio_play_sound(sfx_churchBell,1,0);
	obj_darken.visible = false;
	//instance_destroy(obj_darken);
	night = true;
	
	
	instance_create_depth(room_width/2, room_height/2, -1, obj_enemySpawner);
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



//show_debug_message("have" + string(houseAmountOfRocks+houseAmountOfWood));
if (instance_number(obj_house) != 0)
{
//show_debug_message("house" + string(obj_house.tier4));
}
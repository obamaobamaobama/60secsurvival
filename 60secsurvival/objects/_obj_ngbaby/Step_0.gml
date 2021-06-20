


if (room == rm_ngCheck)
{
	if (keyboard_check(ord("Y")))
	{
		// make false if building itch version
		ngLoggedIn = true;
		visible = false;
		room_goto(rm_splashscreen);
	}
	
	
	if (keyboard_check(ord("N")))
	{
		ngLoggedIn = false;
		visible = false;
		room_goto(rm_splashscreen);
	}
}







// NG_medal_unlock == true just means that it'll check if anything needs to be unlocked, then stop
// NG stuff
if (ngLoggedIn && NG_medal_unlock)
{
	// Welcome to the Island
	if (room == rm_gameplay && _obj_game_manager.nightsSurvived < 1 && medal1 == false)
	{
		ng_unlockmedal("Welcome to the Island");
		medal1 = true;
	}
	
	// Work Week
	if (room == rm_gameplay && _obj_game_manager.nightsSurvived >= 5 && medal2 == false)
	{
		ng_unlockmedal("Work Week");
		medal2 = true;
	}
	
	// Levi Ramirez
	if (room == rm_gameplay && instance_number(obj_leviRamirez) > 0 && _obj_game_manager.nightsSurvived < 1 && medal3 == false)
	{
		if (obj_leviRamirez.levi == true)
		{
			ng_unlockmedal("Levi Ramirez");
			medal3 = true;
		}
	}
	
	

	NG_medal_unlock = false;
}



if (ngLoggedIn && NG_post_score)
{
	ng_postScore(10368,_obj_game_manager.nightsSurvived);
	NG_post_score = false;
}
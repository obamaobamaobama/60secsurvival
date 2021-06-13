var deleteMe = irandom_range(1,100);
if (deleteMe > 6) { instance_destroy(); } else { _obj_round_manager.secondsBeforeNight += _obj_game_manager.resourceTimeWorth; }

dropID = choose("tree", "rock");
if (dropID == "tree") { sprite_index = spr_tree; }
if (dropID == "rock") { sprite_index = spr_stone; }
dropping = false;

offset = random_range(-1,1);
hhealth = irandom_range(2,5);
starthealth = hhealth;
bumpscale = 1;

useShake();

depth = -y;

var rp = instance_place(x,y,obj_resourceParent);
if (rp != noone)
{
	instance_destroy(rp);
	_obj_round_manager.secondsBeforeNight -= _obj_game_manager.resourceTimeWorth;
}
else
{
if (deleteMe != 0 && deleteMe <= 6)
	{
		if (dropID == "tree")
		{
			if (_obj_round_manager.resourceSearch == 1) { _obj_round_manager.houseRequiresXwood += (hhealth-random_range(round(hhealth/2),hhealth)); }
			if (_obj_round_manager.resourceSearch == 2) { _obj_round_manager.houseRequiresXwood += (hhealth-random_range(1,hhealth)); }
			if (_obj_round_manager.resourceSearch == 3) { _obj_round_manager.houseRequiresXwood += (hhealth-random_range(1,hhealth-1)); }
			
		}
		if (dropID == "rock")
		{
			if (_obj_round_manager.resourceSearch == 1) { _obj_round_manager.houseRequiresXrocks += (hhealth-random_range(1,hhealth)); }
			if (_obj_round_manager.resourceSearch == 2) { _obj_round_manager.houseRequiresXrocks += (hhealth-random_range(round(hhealth/2),hhealth)); }
			if (_obj_round_manager.resourceSearch == 3) { _obj_round_manager.houseRequiresXrocks += (hhealth-random_range(1,hhealth-1)); }
		}
	}
}

checkTimer = 0;
checkTimerMAX = 120;

display_set_gui_size(view_wport[0], view_hport[0]);
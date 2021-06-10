var deleteMe = irandom_range(1,100);
if (deleteMe > 6) { instance_destroy(); } else { _round_manager.secondsBeforeNight += _obj_game_manager.resourceTimeWorth; }

dropID = choose("tree", "rock");
if (dropID == "tree") { sprite_index = spr_tree; }
if (dropID == "rock") { sprite_index = spr_stone; }
dropping = false;

offset = random_range(-1,1);
hhealth = 4;
starthealth = hhealth;
bumpscale = 1;

useShake();

depth = -y;

var rp = instance_place(x,y,obj_resourceParent);
if (rp != noone)
{
	instance_destroy(rp);
	_round_manager.secondsBeforeNight -= _obj_game_manager.resourceTimeWorth;
}
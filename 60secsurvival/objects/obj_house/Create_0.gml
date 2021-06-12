

scr_setDepth();
instance_create_depth(x,y-16,-1,obj_player);

obj_fadeIn.fadeIn = true;


var rp = instance_place(x,y,obj_resourceParent);
if (rp != noone)
{
	instance_destroy(rp);
}

var gb = instance_place(x,y,obj_grassblade);
if (gb != noone)
{
	instance_destroy(gb);
}

// DEBUG
//instance_create_depth(x+32,y+32,-1,obj_enemy);


// "Health"
//curHealth = 0;

// House upgrades when health reaches each tier
currentTier = 0;
tier1 = 0;
tier2 = 0;
tier3 = 0;
tier4 = 0;





useShake();
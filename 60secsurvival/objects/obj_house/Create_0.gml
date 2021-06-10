

scr_setDepth();
instance_create_depth(x,y-16,-1,obj_player);
//image_xscale = 2;
//image_yscale = 2;

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
instance_create_depth(x+32,y+32,-1,obj_enemy);


// "Health"
curHealth = 0;

// House upgrades when health reaches each tier
currentTier = 0;
tier0 = 0;
tier1 = 10;
tier2 = 15;
tier3 = 20;
tier4 = 25;
tier5 = 30;


useShake();



// FUCK
// instance_create_depth(x-12,y-16,9, obj_houseHealthBar);
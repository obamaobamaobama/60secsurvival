

var deleteMe = irandom_range(1,100);
if (deleteMe > 5) { instance_destroy(); }

dropID = choose("tree", "rock");
if (dropID == "tree") { sprite_index = spr_tree; }
if (dropID == "rock") { sprite_index = spr_stone; }
dropping = false;

hhealth = 3;

useShake();


var rp = instance_place(x,y,obj_resourceParent);
if (rp != noone)
{
	instance_destroy(rp);
}
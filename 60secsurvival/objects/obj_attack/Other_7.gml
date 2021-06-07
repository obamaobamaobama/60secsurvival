

if (creator == "player")
{
	obj_player.attacking = false
}

var parent = instance_place(x,y,obj_resourceParent);
if (parent != noone)
{
	parent.dropping = false;
}

instance_destroy();
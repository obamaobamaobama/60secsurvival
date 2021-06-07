

var parent = instance_place(x,y,obj_resourceParent);
if (parent != noone)
{
	if (!parent.dropping)
	{
		parent.dropping = true;
		var resource = instance_create_depth(parent.x, parent.y, -1, obj_resource)
		
		if (parent.dropID == "tree")
		{
			resource.sprite_index = spr_log;
		}
		
		if (parent.dropID == "rock")
		{
			resource.sprite_index = spr_rock;
		}
		
		resource.freshSpawn = true;
		
		parent.hhealth -= 1;
		parent.shaking = true;
		if (parent.hhealth < 1) { instance_destroy(parent) }
	}
}
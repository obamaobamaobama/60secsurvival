depth = 100;

var rp = instance_place(x,y,obj_resourceParent);
if (rp != noone)
{
	instance_destroy(rp);
}
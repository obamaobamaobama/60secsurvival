x = x+random_range(-6,6);
y = y+random_range(-6,6);
offset = random_range(-1,1);

if irandom(100) > 5 {instance_destroy()}

var rp = instance_place(x,y,obj_resourceParent);
if (rp != noone)
{
	instance_destroy(self);
}
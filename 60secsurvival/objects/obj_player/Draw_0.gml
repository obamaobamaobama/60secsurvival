if instance_exists(obj_attack)
{
	pdir = obj_attack.image_angle;
	xxang = lengthdir_x(5-obj_attack.image_index,pdir);
	yyang = lengthdir_y(5-obj_attack.image_index,pdir);
	draw_sprite_ext(sprite_index,image_index,x+xxang,y+yyang,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
else
{
	draw_self();	
	
}
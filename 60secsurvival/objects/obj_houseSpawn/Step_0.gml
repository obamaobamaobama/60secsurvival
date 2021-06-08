

var wall = instance_place(x,y,obj_wall);
if (wall == noone
&& x < room_width - (sprite_width/2)
&& x > 0 + (sprite_width/2)
&& y < room_height - (sprite_height/2)
&& y > 0 + (sprite_height/2))
{
	instance_create_depth(x,y,-1,obj_house);
	instance_destroy();
}
else
{


	if (ud == "u")
	{
		if (y < (0 + (sprite_height/2)))
		{
			y = room_height - (sprite_height/2)
			if (lr == "l") { x -= sprite_width; }
			if (lr == "r") { x += sprite_width; }
		}
		else if (md == "v")
		{
			y -= sprite_height;
		}
	}
	
	
	if (ud == "d")
	{
		if (y > (room_height - (sprite_height/2)))
		{
			y = 0 + (sprite_height/2)
			if (lr == "l") { x -= sprite_width; }
			if (lr == "r") { x += sprite_width; }
		}
		else if (md == "v")
		{
			y += sprite_height;
		}
	}
	
	
	if (lr == "l")
	{
		if (x < (0 + (sprite_width/2)))
		{
			x = room_width - (sprite_width/2)
			if (ud == "u") { y -= sprite_height; }
			if (ud == "d") { y += sprite_height; }
		}
		else if (md == "h")
		{
			x -= sprite_width;
		}
	}
	
	
	if (lr == "r")
	{
		if (x > (room_width + (sprite_width/2)))
		{
			x = 0 + (sprite_width/2)
			if (ud == "u") { y -= sprite_height; }
			if (ud == "d") { y += sprite_height; }
		}
		else if (md == "h")
		{
			x += sprite_width;
		}
	}
}
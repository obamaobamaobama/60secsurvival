

var wall = instance_place(x,y,obj_wall);
if (wall == noone
&& x < room_width - (spriteWidth/2)
&& x > 0 + (spriteWidth/2)
&& y < room_height - (spriteHeight/2)
&& y > 0 + (spriteHeight/2))
{
	instance_create_depth(x,y,-1,obj_house);
	instance_destroy();
}
else
{


	if (ud == "u")
	{
		if (y < (0 + (spriteHeight/2)))
		{
			y = room_height - (spriteHeight/2)
			if (lr == "l") { x -= spriteWidth; }
			if (lr == "r") { x += spriteWidth; }
			attempts += 1;
		}
		else if (md == "v")
		{
			y -= spriteHeight;
			attempts += 1;
		}
	}
	
	
	if (ud == "d")
	{
		if (y > (room_height - (spriteHeight/2)))
		{
			y = 0 + (spriteHeight/2)
			if (lr == "l") { x -= spriteWidth; }
			if (lr == "r") { x += spriteWidth; }
			attempts += 1;
		}
		else if (md == "v")
		{
			y += spriteHeight;
			attempts += 1;
		}
	}
	
	
	if (lr == "l")
	{
		if (x < (0 + (spriteWidth/2)))
		{
			x = room_width - (spriteWidth/2)
			if (ud == "u") { y -= spriteHeight; }
			if (ud == "d") { y += spriteHeight; }
			attempts += 1;
		}
		else if (md == "h")
		{
			x -= spriteWidth;
			attempts += 1;
		}
	}
	
	
	if (lr == "r")
	{
		if (x > (room_width + (spriteWidth/2)))
		{
			x = 0 + (spriteWidth/2)
			if (ud == "u") { y -= spriteHeight; }
			if (ud == "d") { y += spriteHeight; }
			attempts += 1;
		}
		else if (md == "h")
		{
			x += spriteWidth;
			attempts += 1;
		}
	}
	
	
	
	if (attempts == 40)
	{
		spriteWidth = spriteWidth/4;
		spriteHeight = spriteHeight/4;
	}
	
	if (attempts == 80)
	{
		spriteWidth = spriteWidth/4;
		spriteHeight = spriteHeight/4;
	}
	
	if (attempts == 120)
	{
		spriteWidth = spriteWidth/4;
		spriteHeight = spriteHeight/4;
	}
}
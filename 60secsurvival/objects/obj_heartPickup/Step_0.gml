

if (place_meeting(x,y,obj_player))
{
	if (!obj_player.dead && obj_player.healthh < 3)
	{
		obj_player.healthh += 1;
		audio_play_sound(sfx_kiss,1,0);
		instance_destroy();
	}
}


if (place_meeting(x,y,obj_wall))
{
	x = irandom_range(1,room_width/16) * 16;
	y = irandom_range(1,room_height/16) * 16;
}

if (place_meeting(x,y,obj_resourceParent))
{
	x = irandom_range(1,room_width/16) * 16;
	y = irandom_range(1,room_height/16) * 16;
}

if (place_meeting(x,y,obj_grassblade))
{
	x = irandom_range(1,room_width/16) * 16;
	y = irandom_range(1,room_height/16) * 16;
}
if instance_exists(obj_player)
{
	if distance_to_object(obj_player) < 64
	{

		if (place_meeting(x,y,obj_player) && keyboard_check(ord("L")))
		{
			levi = true;
			_obj_ngbaby.NG_medal_unlock = true;
		}
		else
		{
			levi = false;
			obj_player.visible = true;
		}
	}
}


if (place_meeting(x,y,obj_player) && keyboard_check(ord("L")))
{
	levi = true;
}
else
{
	levi = false;
	obj_player.visible = true;
}
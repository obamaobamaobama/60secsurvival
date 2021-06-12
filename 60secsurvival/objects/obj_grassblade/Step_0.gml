depth = -(y-8);


if (checkTimer < checkTimerMAX)
{
	checkTimer++;
	
	if (distance_to_object(obj_house) < 32)
	{
		instance_destroy();
	}
}
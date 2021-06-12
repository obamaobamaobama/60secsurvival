shakehp();



if (checkTimer < checkTimerMAX)
{
	checkTimer++;
	
	if (distance_to_object(obj_house) < 32)
	{
		instance_destroy();
	}
}
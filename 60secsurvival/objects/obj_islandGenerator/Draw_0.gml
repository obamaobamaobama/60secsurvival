

if (generated)
{
	DrawIsland();
	generated = false;
	instance_create_depth(32,32,-1,obj_houseSpawn);
	instance_destroy();
}
/*else
{
	if (houseSpawnTimer < 30)
	{
		houseSpawnTimer++;
	}
	else
	{
		instance_create_depth(32,32,-1,obj_houseSpawn);
		instance_destroy();
	}
}*/
if ready = 1
{
	if (!spawned)
	{
		spawnTimer++
		if (spawnTimer > spawnTimerMAX)
		{
			spawned = true;
			scr_enemyCreate(enemyType);
		}
	}
	else
	{
		scr_enemyStep(enemyType);
	}

	depth = -y;
}
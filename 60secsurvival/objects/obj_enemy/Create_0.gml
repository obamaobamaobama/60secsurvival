

if (distance_to_object(obj_player) < 64)
{
	instance_destroy();
}



enemyType = choose("ant","snake","frog");


// Plays spawn animation
spawned = false;
spawnTimer = 0;
spawnTimerMAX = irandom_range(25,45);
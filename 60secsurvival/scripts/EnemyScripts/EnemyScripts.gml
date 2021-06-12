

function scr_enemyCreate(_enemyType)
{
	// DEBUG
	instance_destroy();
	
	dead = false;
	
	// Set sprites
	if (_enemyType == "ant")
	{
		sprite_index = spr_ant;
		target = obj_player;
		chaseSpeed = 1;
		walkAroundSpeed = 0.75;
		healthh = 1;
		followOffsetX = random_range(-16,16);
		followOffsetY = random_range(-16,16);
		attackPower = 1;
	}
}

function scr_enemyStep(_enemyType)
{
	if (_enemyType == "ant") { scr_ant(); }
}



function scr_ant()
{
	if (!dead)
	{
	if (!obj_player.swimming)
	{
		if (target != obj_player) { target = obj_player; }
		
		var water = instance_place(x,y,obj_wall);
		if (water != noone)
		{
			move_towards_point(obj_player.x, obj_player.y, chaseSpeed);
		}
		else
		{
			if (distance_to_object(target) <= 16)
			{
				move_towards_point(obj_player.x, obj_player.y, chaseSpeed);
			}
			else
			{
				move_towards_point(obj_player.x+followOffsetX, obj_player.y+followOffsetY, chaseSpeed);
			}
		}
	}
	else
	{
		if (target == obj_player)
		{
			target = instance_find(obj_resourceParent, irandom(instance_number(obj_resourceParent) - 1));
		}
		
		
		move_towards_point(target.x, target.y, walkAroundSpeed);
		
		if (distance_to_object(target) < 16)
		{
			target = obj_player;
		}
		
		
		var water = instance_place(x,y,obj_wall);
		if (water != noone)
		{
			target = obj_player;
		}
	}
	
	if (target.x < x && image_xscale > 0) { image_xscale = image_xscale * -1; }
	if (target.x > x && image_xscale < 0) { image_xscale = image_xscale * -1; }
	}
	else
	{
		// If dead
		instance_create_depth(x+32,y-16,-1,obj_enemy);
		instance_create_depth(x+32,y+16,-1,obj_enemy);
		instance_destroy();
	}
}





function scr_enemyAttacked(_enemy)
{
	if (_enemy.spawned)
	{
		_enemy.healthh -= 1;
		if (_enemy.healthh <= 1) { _enemy.dead = true; }
	}
}
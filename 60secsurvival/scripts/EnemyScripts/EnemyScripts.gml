

function scr_enemyCreate(_enemyType)
{
	// DEBUG
	//instance_destroy();
	
	dead = false;
	
	// Set sprites
	if (_enemyType == "ant")
	{
		sprite_index = spr_ant;
		target = obj_player;
		chaseSpeed = (obj_player.moveSpeed - (obj_player.moveSpeed/10))/clamp(5-(_obj_game_manager.nightsSurvived),1,999);
		walkAroundSpeed = (obj_player.moveSpeed - (obj_player.moveSpeed/25))/clamp(5-(_obj_game_manager.nightsSurvived),1,999);
		healthh = 1;
		followOffsetX = random_range(-16,16);
		followOffsetY = random_range(-16,16);
		attackPower = 1;
	}
	
	
	if (_enemyType == "snake")
	{
		sprite_index = spr_snake;
		target = obj_player;
		chaseSpeed = (obj_player.moveSpeed - (obj_player.moveSpeed/40))/clamp(5-(_obj_game_manager.nightsSurvived),1,999);
		healthh = 1;
		followOffsetX = random_range(-16,16);
		followOffsetY = random_range(-16,16);
		attackPower = 1;
	}
	
	if (_enemyType == "frog")
	{
		sprite_index = spr_frogLand;
		image_index = 2;
		target = obj_player;
		jumpTimer = 0;
		jumpTimerMAX = 30;
		jumpingTimer = 0;
		jumpingTimerMAX = 60;
		healthh = 1;
		attackPower = 1;
		targetPosX = obj_player.x;
		targetPosY = obj_player.y;
		speeed = 1;
	}
}

function scr_enemyStep(_enemyType)
{
	if (_enemyType == "ant") { scr_ant(); }
	if (_enemyType == "snake") { scr_snake(); }
	if (_enemyType == "frog") { scr_frog(); }
}



function scr_ant()
{
	if (!dead)
	{
	if (!obj_player.swimming && !obj_player.dead)
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
		//instance_create_depth(x+32,y-16,-1,obj_enemy);
		//instance_create_depth(x+32,y+16,-1,obj_enemy);
		instance_destroy();
	}
}


function scr_snake()
{
	if (!dead)
	{
	if (!obj_player.dead)
	{
		if (target != obj_player) { target = obj_player; }
		
		if (distance_to_object(target) <= 16)
		{
			move_towards_point(obj_player.x, obj_player.y, chaseSpeed);
		}
		else
		{
			move_towards_point(obj_player.x+followOffsetX, obj_player.y+followOffsetY, chaseSpeed);
		}
	}
	
	
	if (target.x < x && image_xscale > 0) { image_xscale = image_xscale * -1; }
	if (target.x > x && image_xscale < 0) { image_xscale = image_xscale * -1; }
	}
	else
	{
		// If dead
		instance_destroy();
	}
}



function scr_frog()
{
	if (!dead)
	{
	if (!obj_player.dead)
	{
		
		if (jumpTimer < jumpTimerMAX)
		{
			jumpTimer++;
			targetPosX = obj_player.x + irandom_range(-4,4);
			targetPosY = obj_player.y + irandom_range(-4,4);
		}
		else
		{
			if (jumpingTimer < jumpingTimerMAX)
			{
				if (sprite_index != spr_frogJump) { sprite_index = spr_frogJump; }
				jumpingTimer++;
				if (distance_to_point(targetPosX,targetPosY) > 1)
				{
					move_towards_point(targetPosX,targetPosY,speeed);
				}
			}
			else
			{
				if (sprite_index != spr_frogLand) { sprite_index = spr_frogLand; }
				speeed = random_range(0.5,2);
				jumpingTimer = 0;
				jumpingTimerMAX = irandom_range(10,30)*speeed;
				speed = 0;
				jumpTimer = 0;
				jumpTimerMAX = irandom_range(5,45);
			}
		}
	}
	
	
	if (target.x < x && image_xscale > 0) { image_xscale = image_xscale * -1; }
	if (target.x > x && image_xscale < 0) { image_xscale = image_xscale * -1; }
	}
	else
	{
		// If dead
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
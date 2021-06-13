depth = -y;

if (freshSpawn)
{
	freshSpawnTimer--;
	if (freshSpawnTimer > 0)
	{
		x += (lr * lrm);
		y += (up * upm);
	}
	else
	{
		freshSpawn = 0;
		shaking = true;
	}
}


if (held == 0)
{
	if (distance_to_object(trg) < 16 && !suckIn)
	{
		suckIn = 1;
		shaking = true;
		var sfx = choose(sfx_pop1,sfx_pop2);
		audio_play_sound(sfx,1,0);
	}
	
	
	if (suckIn == 1)
	{
		if (distance_to_object(trg) > 1)
		{
			move_towards_point(trg.x, trg.y, obj_player.moveSpeedCur+0.1)
		}
		else
		{
			speed = 0;
			held = 1;
			shaking = true;
			place = point_direction(trg.x, trg.y, x, y);
			if (trg == obj_player) { obj_player.carryWeight += 1; }
		}
	}
}


if (held == 1)
{
	// Orbit
	x = trg.x + lengthdir_x(length, place);
	y = trg.y + lengthdir_y(length, place);
	place += spd;
	
	if (trg == obj_house) { length -= 0.01 * spd; spd += 0.75; }
	if (length < 1)
	{
		if (sprite_index == spr_rock)
		{
			if (_obj_round_manager.houseAmountOfRocks <= (_obj_round_manager.houseRequiresXrocks - worth))
			{
				shaking = true;
				obj_house.shaking = true;
				_obj_round_manager.houseAmountOfRocks += worth;
				HouseDeposit(worth);
			}
		}
		if (sprite_index == spr_log)
		{
			if (_obj_round_manager.houseAmountOfWood <= (_obj_round_manager.houseRequiresXwood - worth))
			{
				shaking = true;
				obj_house.shaking = true;
				_obj_round_manager.houseAmountOfWood += worth;
				HouseDeposit(worth);
			}
		}
		instance_destroy();
		}
}





if (distance_to_object(obj_house) < 8 && held == 1 && !deposit)
{
	deposit = true;
	held = 0;
	suckIn = 0;
	if (trg == obj_player) { obj_player.carryWeight -= 1; }
	trg = obj_house;
}


shake();
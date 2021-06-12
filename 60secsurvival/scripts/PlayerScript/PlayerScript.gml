function playerCreate()
{
	// Player Stats
	moveSpeed = 2
	moveSpeedCur = 1;
	facing = "D";
	attacking = false;
	carryWeight = 0;
	scr_setDepth();
	swimming = false;
	healthh = 5;
	dead = false;
	deathSpin = choose(-5,5);
}


function playerStep()
{
	// DEBUG
	//if (keyboard_check_pressed(ord("R"))) { room_restart(); }
	
	
	
	// Controls
	var controlUP = _obj_controls.up_check;
	var controlDOWN = _obj_controls.down_check;
	var controlLEFT = _obj_controls.left_check;
	var controlRIGHT = _obj_controls.right_check;
	var controlB = _obj_controls.b_check;
	var controlBheld = _obj_controls.b_heldTime;
	
	
	if (!dead)
	{
	moveSpeedCur = moveSpeed  - (carryWeight/50);
	if (swimming) { moveSpeedCur = moveSpeedCur / 2; }
	if (moveSpeedCur < 1) { moveSpeedCur = 1; }
	
	// Before swimming was added
	/*if (controlUP && !place_meeting(x,y-2,obj_wall)) { y -= moveSpeedCur }
	if (controlDOWN && !place_meeting(x,y+2,obj_wall)) { y += moveSpeedCur; }
	if (controlLEFT && !place_meeting(x-2,y,obj_wall)) { x -= moveSpeedCur; }
	if (controlRIGHT && !place_meeting(x+2,y,obj_wall)) { x += moveSpeedCur; }*/
	
	
	// After swimming was added
	if (controlUP && y > 0 + (sprite_height/3)) { y -= moveSpeedCur }
	if (controlDOWN && y < room_height - (sprite_height/3)) { y += moveSpeedCur; }
	if (controlLEFT && x > 0 + (sprite_width/3)) { x -= moveSpeedCur; }
	if (controlRIGHT && x < room_width - (sprite_width/3)) { x += moveSpeedCur; }
	
	
	if (!swimming)
	{
		if (controlUP && facing != "U") { facing = "U"; sprite_index = spr_player_walkUp image_xscale = 1;}
		if (controlDOWN && facing != "D") { facing = "D"; sprite_index = spr_player_walkDown; image_xscale = 1;}
		if (controlLEFT && facing != "L") { facing = "L"; sprite_index = spr_player_walkRight; image_xscale = -1;}
		if (controlRIGHT && facing != "R") { facing = "R"; sprite_index = spr_player_walkRight; image_xscale = 1;}
		
		if (!controlRIGHT && !controlUP && !controlDOWN && !controlLEFT) { image_speed = 0; image_index = 0;}
		else
		{ image_speed = 1; }
	
	
	
		var wall = instance_place(x,y,obj_wall);
		if (wall != noone && !place_meeting(wall.x, wall.y, obj_resourceParent))
		{
			swimming = true;
			sprite_index = spr_player_swimming;
			_obj_game_manager._audioBGMcurrent = 0;
			_obj_game_manager._audioBGMcurrent2 = 1;
		}
	}
	else
	{
		var wall = instance_place(x,y,obj_wall);
		var orp = instance_place(x,y,obj_resourceParent);
		if (wall == noone && orp == noone)
		{
			swimming = false;
			_obj_game_manager._audioBGMcurrent = 1;
			_obj_game_manager._audioBGMcurrent2 = 0;
		}
	}
	
	
	
	
	
	if mouse_check_button_pressed(mb_left) or mouse_check_button_released(mb_left)
	{
		if (attacking == 0 && !swimming)
		{
			playerAttack();
		}
	}
	
	//if (controlB && controlBheld < 3 && !attacking && !swimming)
	if (controlB && controlBheld < 15 && attacking == 0 && !swimming)
	{
		playerAttack();
	}
	
	function playerAttack()
	{
		attacking = true;
		var attack = instance_create_depth(x,y,1,obj_attack);
		attack.creator = "player";
		//if (facing == "R") { attack.image_angle = 0; }
		//if (facing == "U") { attack.image_angle = 90; }
		//if (facing == "L") { attack.image_angle = 180; }
		//if (facing == "D") { attack.image_angle = 270; }
	}
	
	
	// Hurt by enemy
	var enemy = instance_place(x,y,obj_enemy);
	if (enemy != noone)
	{
		healthh -= enemy.attackPower;
		instance_destroy(enemy);
	}
	
	
	// Enter House
	var house = instance_place(x,y,obj_house);
	if (house != noone && house.currentTier == 4)
	{
		audio_stop_all();
		_obj_game_manager.nightsSurvived += 1;
		room_goto(rm_gameplay);
	}
	
	
	if (healthh < 1) { dead = true }
	
	// DEBUG
	if (keyboard_check_pressed(ord("Y"))) { healthh -= 1; }
	
	
	}
	else
	{
		// IF DEAD
		// NG API (Add highscore)
		if (keyboard_check_pressed(ord("R"))) { audio_stop_all(); _obj_game_manager.nightsSurvived = 0; room_goto(rm_gameplay); }
		if (keyboard_check_pressed(ord("T"))) { audio_stop_all(); _obj_game_manager.nightsSurvived = 0; room_goto(rm_mainMenu); }
		
		_obj_game_manager._audioBGMcurrent = 0;
		_obj_game_manager._audioBGMcurrent2 = 0;
		
		if (sprite_index != spr_playerDead) { sprite_index = spr_playerDead; image_speed = 1; }
		
		if (image_xscale > 0)
		{
			image_xscale -= 0.03;
			image_yscale -= 0.03;
			image_angle += deathSpin;
		}
		else
		{
			if (instance_number(obj_tombstone) == 0)
			{
				instance_create_depth(x,y,-1,obj_tombstone);
			}
		}
	}
}
function playerCreate()
{
	// Player Stats
	moveSpeed = 1.5;
	moveSpeedCur = 1;
	facing = "D";
	attacking = false;
	carryWeight = 0;
	scr_setDepth();
	swimming = false;
	healthh = _obj_game_manager.playerHealth;
	dead = false;
	deathSpin = choose(-5,5);
	footStep = 2;
	
	playedDeathMusic = false;
	updateScore = false;
}


function playerStep()
{
	// DEBUG
	//if (keyboard_check_pressed(ord("R"))) { audio_stop_all(); room_restart(); }
	//if (keyboard_check_pressed(ord("T"))) { audio_stop_all(); room_goto(rm_mainMenu); }
	
	
	
	// Controls
	var controlUP = _obj_controls.up_check;
	var controlDOWN = _obj_controls.down_check;
	var controlLEFT = _obj_controls.left_check;
	var controlRIGHT = _obj_controls.right_check;
	
	
	if (!dead)
	{
	moveSpeedCur = moveSpeed  - (carryWeight/50);
	if (swimming) { moveSpeedCur = moveSpeedCur / 2; }
	var movement = controlUP + controlDOWN + controlLEFT + controlRIGHT;
	if (movement > 1) { moveSpeedCur = moveSpeedCur - (moveSpeedCur/15); }
	if (moveSpeedCur < 0.1) { moveSpeedCur = 0.1; }
	
	
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
		
		if (image_index == 1 && footStep != 1) { audio_play_sound(sfx_footstep1,1,0); footStep = 1; }
		if (image_index == 3 && footStep != 2) { audio_play_sound(sfx_footstep2,1,0); footStep = 2; }
	
	
	
		var wall = instance_place(x,y,obj_wall);
		if (wall != noone && !place_meeting(wall.x, wall.y, obj_resourceParent))
		{
			swimming = true;
			facing = "";
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
	
	
	
	
	function playerAttack()
	{
		attackTimer = attackTimerMAX+1;
		if (attackTimer >= attackTimerMAX)
		{
			var sfx = choose(sfx_attack1,sfx_attack2,sfx_attack3);
			audio_play_sound(sfx,1,0);
			attacking = true;
			attackTimer = 0;
			var attack = instance_create_depth(x,y,1,obj_attack);
			attack.creator = "player";
			//if (facing == "R") { attack.image_angle = 0; }
			//if (facing == "U") { attack.image_angle = 90; }
			//if (facing == "L") { attack.image_angle = 180; }
			//if (facing == "D") { attack.image_angle = 270; }
		}
	}
	
	
	if mouse_check_button_pressed(mb_left) or mouse_check_button_released(mb_left)
	{
		if (attacking == 0 && !swimming)
		{
			playerAttack();
		}
	}
	
	
	// Hurt by enemy
	var enemy = instance_place(x,y,obj_enemy);
	if (enemy != noone && enemy.spawned) and !instance_exists(obj_roomtransition)
	{
		if (hurtTimer >= hurtTimerMAX)
		{
			healthh -= enemy.attackPower;
			sfx = choose(sfx_hurt1,sfx_hurt2,sfx_hurt3,sfx_hurt4,sfx_hurt5,sfx_hurt6,sfx_hurt7,sfx_hurt8);
			audio_play_sound(sfx,1,0);
			hurtTimer = 0;
			enemy.dead = true;
		}
	}
	
	
	// Enter House
	var house = instance_place(x,y,obj_house);
	if (house != noone && house.currentTier == 4)
	{		
		if !instance_exists(obj_roomtransition)
		{
			f = instance_create_depth(0,0,-9999999,obj_roomtransition);
			f.roomrestart = 1;
			visible = 0;
			
			_obj_game_manager.playerHealth = healthh;
			_obj_game_manager.nightsSurvived += 1;
		}
	}
	
	
	if (healthh < 1) { dead = true }
	
	}
	else
	{
		// IF DEAD
		if (!audio_is_playing(bgm_death) && !playedDeathMusic) { audio_play_sound(bgm_death,1,false); playedDeathMusic = true; }
		if (keyboard_check_pressed(ord("R"))) { audio_stop_all(); _obj_game_manager.nightsSurvived = 0; room_goto(rm_gameplay); _obj_game_manager.playerHealth = 5; }
		if (keyboard_check_pressed(ord("T"))) { audio_stop_all(); _obj_game_manager.nightsSurvived = 0; room_goto(rm_mainMenu); _obj_game_manager.playerHealth = 5 }
		
		if (_obj_ngbaby.ngLoggedIn && !updateScore)
		{
			_obj_ngbaby.NG_post_score = true;
			updateScore = true;
		}
		
		_obj_game_manager._audioBGMcurrent = 0;
		_obj_game_manager._audioBGMcurrent2 = 0;
		
		
		if (sprite_index != spr_playerDead) { sprite_index = spr_playerDead; image_speed = 1; }
	}
}
function playerCreate()
{
	// Player Stats
	moveSpeed = 2;
	moveSpeedCur = 2;
	facing = "D";
	attacking = false;
	carryWeight = 0;
	scr_setDepth();
}


function playerStep()
{
	// DEBUG
	if (keyboard_check_pressed(ord("R"))) { game_restart(); }
	
	
	
	// Controls
	var controlUP = _obj_controls.up_check;
	var controlDOWN = _obj_controls.down_check;
	var controlLEFT = _obj_controls.left_check;
	var controlRIGHT = _obj_controls.right_check;
	var controlB = _obj_controls.b_check;
	var controlBheld = _obj_controls.b_heldTime;
	
	
	moveSpeedCur = moveSpeed  - (carryWeight/50);
	if (moveSpeedCur < 1) { moveSpeedCur = 1; }
	
	if (controlUP && !place_meeting(x,y-2,obj_wall)) { y -= moveSpeedCur }
	if (controlDOWN && !place_meeting(x,y+2,obj_wall)) { y += moveSpeedCur; }
	if (controlLEFT && !place_meeting(x-2,y,obj_wall)) { x -= moveSpeedCur; }
	if (controlRIGHT && !place_meeting(x+2,y,obj_wall)) { x += moveSpeedCur; }
	
	if (controlUP && facing != "U") { facing = "U"; sprite_index = spr_player_walkUp image_xscale = 1;}
	if (controlDOWN && facing != "D") { facing = "D"; sprite_index = spr_player_walkDown; image_xscale = 1;}
	if (controlLEFT && facing != "L") { facing = "L"; sprite_index = spr_player_walkRight; image_xscale = -1;}
	if (controlRIGHT && facing != "R") { facing = "R"; sprite_index = spr_player_walkRight; image_xscale = 1;}
	
	if (!controlRIGHT && !controlUP && !controlDOWN && !controlLEFT) { image_speed = 0; image_index = 0;}
	else
	{image_speed = 1;}
	
	
	
	if (controlB && controlBheld < 3 && !attacking)
	{
		playerAttack();
	}
	
	function playerAttack()
	{
		attacking = true;
		var attack = instance_create_depth(x,y,1,obj_attack);
		attack.creator = "player";
		if (facing == "R") { attack.image_angle = 0; }
		if (facing == "U") { attack.image_angle = 90; }
		if (facing == "L") { attack.image_angle = 180; }
		if (facing == "D") { attack.image_angle = 270; }
	}
	
	
	// idk for now, maybe use this for damange from enemies
	var resource = instance_place(x,y,obj_resource);
	if (resource != noone)
	{
		// stuff
	}
}
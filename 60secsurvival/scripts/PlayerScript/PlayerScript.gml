

function playerCreate()
{
	// Player Stats
	moveSpeed = 2;
	facing = "D";
	
	// Create Player Sprites
	instance_create_depth(x, y, -1, obj_playerSprites);
	
	// Other
	depth = -10;
}


function playerStep()
{
	// DEBUG
	if (keyboard_check_pressed(ord("R"))) { game_restart(); }
	
	// Player Sprites
	obj_playerSprites.x = x;
	obj_playerSprites.y = y;
	
	// Controls
	var controlUP = _obj_controls.up_check;
	var controlDOWN = _obj_controls.down_check;
	var controlLEFT = _obj_controls.left_check;
	var controlRIGHT = _obj_controls.right_check;
	
	
	if (controlUP && !place_meeting(x,y-2,obj_wall)) { y -= moveSpeed; }
	if (controlDOWN && !place_meeting(x,y+2,obj_wall)) { y += moveSpeed; }
	if (controlLEFT && !place_meeting(x-2,y,obj_wall)) { x -= moveSpeed; }
	if (controlRIGHT && !place_meeting(x+2,y,obj_wall)) { x += moveSpeed; }
	
	if (controlUP && facing != "U") { facing = "U"; obj_playerSprites.sprite_index = spr_player_walkUp }
	if (controlDOWN && facing != "D") { facing = "D"; obj_playerSprites.sprite_index = spr_player_walkDown; }
	if (controlLEFT && facing != "L") { facing = "L"; }
	if (controlRIGHT && facing != "R") { facing = "R"; }
	
	if (!controlRIGHT && !controlUP && !controlDOWN && !controlLEFT) { obj_playerSprites.image_speed = 0; }
	else
	{
		obj_playerSprites.image_speed = 1;
	}
}
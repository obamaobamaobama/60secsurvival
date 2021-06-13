x = obj_player.x
y = obj_player.y

var parent = instance_place(x,y,obj_resourceParent);
if (parent != noone)
{
	obj_player.attackTimer = obj_player.attackTimerMAX+1;
	
	if (!parent.dropping)
	{
		parent.dropping = true;
		var resource = instance_create_depth(parent.x, parent.y, -1, obj_resource)
		
		if (parent.dropID == "tree")
		{
			var sfx = choose(sfx_tree1,sfx_tree2,sfx_tree3);
			audio_play_sound(sfx,1,0);
			resource.sprite_index = spr_log;
		}
		
		if (parent.dropID == "rock")
		{
			var sfx = choose(sfx_rock1,sfx_rock2,sfx_rock3,sfx_rock4);
			audio_play_sound(sfx,1,0);
			resource.sprite_index = spr_rock;
		}
		
		resource.freshSpawn = true;
		
		parent.hhealth -= 1;
		parent.shaking = true;
		if (parent.hhealth < 1) { instance_destroy(parent) }
	}
}


var enemy = instance_place(x,y,obj_enemy);
if (enemy != noone)
{
	scr_enemyAttacked(enemy);
}
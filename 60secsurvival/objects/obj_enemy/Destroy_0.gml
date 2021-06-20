if ready = 1 
{
	var deathSprite = instance_create_depth(x,y,-1,obj_enemyDeathSprite);
	deathSprite.image_angle = point_direction(x,y,obj_player.x,obj_player.y) + 90;
}
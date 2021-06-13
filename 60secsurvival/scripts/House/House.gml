

function HouseDeposit(_worth)
{
	var house = obj_house;
	
	instance_create_depth(house.x, house.y, 9, obj_houseParticles);
	
	var TotalResources = _obj_round_manager.houseAmountOfRocks + _obj_round_manager.houseAmountOfWood;
	if (TotalResources >= house.tier1 && TotalResources < house.tier2) { house.image_index = 1; house.currentTier = 1; }
	if (TotalResources >= house.tier2 && TotalResources < house.tier3) { house.image_index = 2; house.currentTier = 2; }
	if (TotalResources >= house.tier3 && TotalResources < house.tier4) { house.image_index = 3; house.currentTier = 3; }
	if (TotalResources >= house.tier4 && house.sprite_index != spr_houseDone) { house.sprite_index = spr_houseDone; house.currentTier = 4; audio_play_sound(choose(sfx_doorbell1,sfx_doorbell2),1,0); }
	
	if (house.sprite_index != spr_houseDone)
	{
		var sfx = choose(sfx_popHouse1,sfx_popHouse2,sfx_popHouse3,sfx_popHouse4);
		audio_play_sound(sfx,1,0);
	}
}
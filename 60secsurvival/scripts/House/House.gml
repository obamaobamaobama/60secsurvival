

function HouseDeposit(_worth)
{
	var house = obj_house;
	
	instance_create_depth(house.x, house.y, 9, obj_houseParticles);
	
	var TotalResources = _obj_round_manager.houseAmountOfRocks + _obj_round_manager.houseAmountOfWood;
	if (TotalResources >= house.tier1 && TotalResources < house.tier2) { house.image_index = 1; house.currentTier = 1; }
	if (TotalResources >= house.tier2 && TotalResources < house.tier3) { house.image_index = 2; house.currentTier = 2; }
	if (TotalResources >= house.tier3 && TotalResources < house.tier4) { house.image_index = 3; house.currentTier = 3; }
	if (TotalResources >= house.tier4) { house.image_index = 4; house.currentTier = 4; }
}
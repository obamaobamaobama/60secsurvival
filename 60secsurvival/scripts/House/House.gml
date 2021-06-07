

function HouseDeposit(_worth)
{
	var house = obj_house;
	
	house.curHealth += _worth;
	//show_debug_message(house.curHealth);
	
	
	
	var hhealth = obj_house.curHealth;
	house.yeet = true;
	instance_create_depth(house.x, house.y, 9, obj_houseParticles);
	
	if (hhealth >= house.tier1 && hhealth < house.tier2) { house.image_index = 1; house.currentTier = 1; }
	if (hhealth >= house.tier2 && hhealth < house.tier3) { house.image_index = 2; house.currentTier = 2; }
	if (hhealth >= house.tier3 && hhealth < house.tier4) { house.image_index = 3; house.currentTier = 3; }
	if (hhealth >= house.tier4 && hhealth < house.tier5) { house.image_index = 4; house.currentTier = 4; }
	//if (hhealth >= house.tier5) { house.image_xscale += 0.1; house.image_yscale += 0.1; }
}


if (obj_house.currentTier == 0)
{
	var tierHealth = obj_house.tier1;
	var healthpercent = ((obj_house.curHealth - obj_house.tier0) / tierHealth) * 100;
	
	increaseHealth(healthpercent);
}


if (obj_house.currentTier == 1)
{
	var tierHealth = obj_house.tier2 - obj_house.tier1;
	var healthpercent = ((obj_house.curHealth + (obj_house.tier2/100*10) - obj_house.tier1) / tierHealth) * 100;
	
	increaseHealth(healthpercent);
}


if (obj_house.currentTier == 2)
{
	var tierHealth = obj_house.tier3 - obj_house.tier2;
	var healthpercent = ((obj_house.curHealth + (obj_house.tier3/100*10) - obj_house.tier2) / tierHealth) * 100;
	increaseHealth(healthpercent);
}


if (obj_house.currentTier == 3)
{
	var tierHealth = obj_house.tier4 - obj_house.tier3;
	var healthpercent = ((obj_house.curHealth + (obj_house.tier4/100*10) - obj_house.tier3) / tierHealth) * 100;
	increaseHealth(healthpercent);
}


if (obj_house.currentTier == 4)
{
	instance_destroy();
}
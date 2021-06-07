


function increaseHealth(_healthPercent)
{
	
	
	if (_healthPercent >= 100)
	{
		_healthPercent = 99;
	}
	
	show_debug_message("hp " + string(_healthPercent));
	show_debug_message("xscale " + string(image_xscale));
	
	if (image_xscale < (round(_healthPercent) / 7.5))
	{
	image_xscale += 0.1;
	}
	
	if (image_xscale > 12)
	{
		image_xscale = 0;
	}
	
	
	if (_healthPercent < 80 && image_xscale >= 10.7)
	{
		image_xscale += 0.1;
	}
}
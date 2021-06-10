function useShake()
{
	shaking = false;
	
	// If false, scales down
	scaleUp = true;
	
	minScale = 1;
	maxScale = 1.4;
	shakeSpeed = (maxScale - minScale)/4;
}

function shake()
{
	if (shaking)
	{
		if (scaleUp)
		{
			if (image_xscale < maxScale)
			{
				image_xscale += shakeSpeed;
				image_yscale += shakeSpeed;
			}
			else
			{
				scaleUp = false;
			}
		}
		else
		{
			if (image_xscale > minScale)
			{
				image_xscale -= shakeSpeed;
				image_yscale -= shakeSpeed;
			}
			else
			{
				scaleUp = true;
				shaking = false;
			}
		}
	}
}

function shakehp()
{
	scale = (hhealth+starthealth) / (starthealth*2);
	
	if (!shaking)
	{
		xscale = scale * bumpscale; 
		yscale = scale * bumpscale; 
	}
	else
	{
		xscale = bumpscale; 
		yscale = bumpscale; 
	}
	
	if image_xscale > xscale {image_xscale -= 0.05}
	if image_yscale > yscale {image_yscale -= 0.05}
	if image_xscale < xscale {image_xscale += 0.05}
	if image_yscale < yscale {image_yscale += 0.05}
	
	if (shaking)
	{		
		if (scaleUp)
		{
			if (bumpscale < maxScale)
			{
				bumpscale += shakeSpeed;
				bumpscale += shakeSpeed;
			}
			else
			{
				scaleUp = false;
			}
		}
		else
		{
			if (bumpscale > minScale)
			{
				bumpscale -= shakeSpeed;
				bumpscale -= shakeSpeed;
			}
			else
			{
				scaleUp = true;
				shaking = false;
			}
		}
	}
}
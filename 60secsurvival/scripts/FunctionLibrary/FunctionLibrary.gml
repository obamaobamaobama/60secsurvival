
function useShake()
{
	shaking = false;
	
	// If false, scales down
	scaleUp = true;
	
	minScale = 1;
	maxScale = 1.2;
	shakeSpeed = maxScale - minScale;
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
/// @description Rotate

if(timerStarted){
	if(global.slowdown)
	{
		timer += rotationSpeed / 2;
	}
	else
	{
		timer += rotationSpeed;
	}
}

image_angle = sin(timer) * amplitude;

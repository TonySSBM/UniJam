/// @desc 

if(global.meterFull == 1)
{
	counter = counter + 1;
	if(counter >= cooldown)
	{
		counter = 0;	
		x = irandom_range(25, 130);
		y = irandom_range(310, 345);
		instance_create_layer(x, y, "Instances", objFullMeterParticle);
	}
}

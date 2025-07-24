/// @desc 

if(global.slowdown)
{
	counter = counter + 1;
	if(counter >= cooldown)
	{
		counter = 0;
		x = objChar.x;
		y = objChar.y;
		instance_create_layer(x, y, "Instances", objSlowdownParticle);
	}
}

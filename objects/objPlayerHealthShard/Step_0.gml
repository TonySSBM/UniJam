/// @desc 

/// @description Target Player

if(!targetting && speed <= -0.1){
	accel *= -1;
	targetting = true;
}
/*
if(targetting){
	instance_destroy(self);
}
*/
speed += accel * delta_time / 1000000;
image_angle += hspeed;
depth = -y;



image_alpha = image_alpha - 0.03;
if(image_alpha <= 0)
{
	instance_destroy();	
}
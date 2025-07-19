/// @description Target Player

if(!targetting && speed <= 0){
	accel *= -1;
	targetting = true;
}
if(targetting){
	direction = point_direction(x,y,playerInstance.x, playerInstance.y);
	accel /= 1.05;
}

speed += accel * delta_time / 1000000;
image_angle += hspeed;
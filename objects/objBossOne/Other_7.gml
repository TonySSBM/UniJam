/// @description Stop Firing

image_index = 0;
image_speed = 0;
firingTime = random_range(2, 5);
alarm[0] = firingTime * 60;

instance_create_layer(x,y,layer,objBall);
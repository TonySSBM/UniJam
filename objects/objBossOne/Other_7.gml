/// @description Stop Firing

if(sprite_index == sprBossOneAttack){
	firingTime = random_range(2, 5);
	alarm[0] = firingTime * 60;
	sprite_index = sprBossOneIdle;

	instance_create_layer(x,y,layer,objBall);
}
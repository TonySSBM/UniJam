/// @description Stop Firing

if(sprite_index == sprBossOneAttack){
	firingTime = random_range(2, 5);
	alarm[0] = firingTime * 60;
	sprite_index = sprBossOneIdle;
	audio_play_sound(sndBossOneAttack, 11, false);
	
	instance_create_layer(x,y,layer,objBall);
}
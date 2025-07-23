/// @description Stop Firing

if(sprite_index == sprBossThreeAttackMiddle){
	firingTime = random_range(4, 6);
	alarm[0] = firingTime * 60;
	sprite_index = sprBossThreeIdleMiddle;
	audio_play_sound(sndBossAttack, 11, false);
	
	var newBall = instance_create_layer(x,y,layer,objBall);
	newBall.sprite_index = sprJupiter;
	newBall.hspeed = random_range(-.3,.3);
	newBall.speed *= 0.2;
}
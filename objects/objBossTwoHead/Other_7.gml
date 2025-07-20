/// @description Stop Firing

if(sprite_index == sprBossTwoHeadAttack){
	firingTime = random_range(2, 5);
	alarm[0] = firingTime * 60;
	sprite_index = sprBossTwoHeadIdle;
	audio_play_sound(sndBossAttack, 11, false);
	
	var newBall = instance_create_layer(x,y,layer,objBall);
	newBall.sprite_index = sprMars;
	newBall.hspeed = random_range(-.4,.4);
	newBall.speed *= 1.3;
}
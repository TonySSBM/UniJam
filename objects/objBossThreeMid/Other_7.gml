/// @description Stop Firing

if(sprite_index == sprBossThreeAttackMiddle){
	var bossLeft = instance_number(objBossThreeMid) + instance_number(objBossThreeSide);
	if(bossLeft == 1){
		firingTime = random_range(1, 2);
	} else if(bossLeft == 2){
		firingTime = random_range(2, 4);
	}else{
		firingTime = random_range(4, 6);
	}
	alarm[0] = firingTime * 60;
	sprite_index = sprBossThreeIdleMiddle;
	audio_play_sound(sndBossAttack, 11, false);
	
	var newBall = instance_create_layer(x,y + 60,layer,objBall);
	newBall.sprite_index = sprJupiter;
	newBall.hspeed = random_range(-.3,.3);
	newBall.speed *= 0.2;
}
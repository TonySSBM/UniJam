/// @description Stop Firing

if(sprite_index == sprBossThreeAttackLeft){
	
	var bossLeft = instance_number(objBossThreeMid) + instance_number(objBossThreeSide);
	if(bossLeft == 1){
		firingTime = random_range(2, 4);
	} else if(bossLeft == 2){
		firingTime = random_range(3, 5);
	}else{
		firingTime = random_range(4, 6);
	}
	alarm[0] = firingTime * 60;
	sprite_index = sprBossThreeIdleLeft;
	audio_play_sound(sndBossAttack, 11, false);
	
	var newBall = instance_create_layer(x,y + 60,layer,objBall);
	var randBall = irandom(2);
	if(randBall == 0){ //moon
		newBall.sprite_index = sprMoon;
	}else if(randBall == 1){ //mars
		newBall.sprite_index = sprMars;
		newBall.hspeed = random_range(-.4,.4);
		newBall.speed *= 1.3;
	}else{ //saturn
		newBall.sprite_index = sprSaturn;
		newBall.hspeed = random_range(-2.4, 2.4);
		newBall.speed *= 0.4;
	}
}
/// @description Ball Moving

//collision with side of screen
if(x < hBallBounds or x > (room_width - hBallBounds)){
	hspeed *= -1;
	
	if(reset){
		//speed *= collisionSpeedMultiplier;
		reset = false;
		alarm[0] = resetCounter;
	}
	
	if(!audio_is_playing(sndProjectileBump)){
		audio_stop_sound(sndProjectileBump);
	}
	audio_play_sound(sndProjectileBump, 11, false);
}

//collision with top wall
if(y <= ballBounds){
	vspeed *= -1;
	if(reset){
		//speed *= collisionSpeedMultiplier;
		reset = false;
		alarm[0] = resetCounter;
	}
	if(!audio_is_playing(sndProjectileBump)){
		audio_stop_sound(sndProjectileBump);
	}
	audio_play_sound(sndProjectileBump, 11, false);
}

//collision with the bottom wall
if(y >= (room_height - 6)){
	instance_destroy(self);
}

//collision with player object
if(!collided and playerInstance.sprite_index == sprCharSwing and playerInstance.image_index > 1 and position_meeting(x ,y, playerInstance)){
	collided = true;
	hit = false;
	star = true;
	var actualReturnSpeed = playerInstance.returnSpeed + playerInstance.swingCharge;
	if(global.slowdown){
		actualReturnSpeed /= 2;
	}
	
	show_debug_message(actualReturnSpeed);
	
	var swingAngle = random_range(55,65);
	
	if(playerInstance.image_index <= 2){
		vspeed = -1.0 * lengthdir_x(actualReturnSpeed, swingAngle);
		hspeed = -1.0 * lengthdir_y(actualReturnSpeed, swingAngle) * playerInstance.image_xscale;
	}
	else if(playerInstance.image_index <= 3){
		vspeed = -1.0 * actualReturnSpeed;
		hspeed = 0.0 * actualReturnSpeed * playerInstance.image_xscale;
	}
	else if(playerInstance.image_index <= 6){
		vspeed = -1.0 * lengthdir_x(actualReturnSpeed, swingAngle);
		hspeed = 1.0 * lengthdir_y(actualReturnSpeed, swingAngle) * playerInstance.image_xscale;
	}
	else{ //should never happen
		show_debug_message("Faulty Collision: " + string(playerInstance.image_index));
		vspeed *= -1;
		hspeed = -1 * playerInstance.image_xscale;
	}
	
	show_debug_message(speed);
	if(speed > 7 or (global.slowdown and speed > (7 / slowRate))){
		sprite_index = sprSuperStar;
		audio_play_sound(sndTennisHitHard, 11, false);
		show_debug_message("SUPER: " + string(actualReturnSpeed));
		for(var i = 0; i < 5; i++){
			var starDrop = instance_create_layer(x, y, layer, objStarDrop);
		}
		with (playerInstance) {
			isScreenshake = 1;
			alarm[0] = screenshakeLength;
		}
	}else{
		if(sprite_index == sprSuperStar){
			for(var i = 0; i < 5; i++){
				var starDrop = instance_create_layer(x, y, layer, objStarDrop);
			}
		}
		sprite_index = sprStar;
		audio_play_sound(sndTennisHitRegular, 11, false);
	}
}

if(!hit and star and position_meeting(x ,y, objBossOne)){
	with (instance_find(objBossOne, 0)){
		event_user(0);
	}
	
	with (playerInstance) {
		isScreenshake = 1;
		alarm[0] = screenshakeLength;
	}
	
	hit = true;
	vspeed *= -1;
	instance_destroy(instance_nearest(0, room_height, objEnemyHealth));
	if(instance_number(objEnemyHealth) == 0){
		event_perform_object(objChar, ev_other, ev_user1);
		instance_destroy(objBall);
	}
	if(sprite_index == sprSuperStar){	
		instance_destroy(instance_nearest(0, room_height, objEnemyHealth));
		if(instance_number(objEnemyHealth) == 0){
			event_perform_object(objChar, ev_other, ev_user1);
			instance_destroy(objBall);
		}
		audio_play_sound(sndEnemyHitHard, 11, false);
	}else{
		audio_play_sound(sndEnemyHitRegular, 11, false);
	}
	if(reset){
		speed *= collisionSpeedMultiplier;
		reset = false;
		alarm[0] = resetCounter;
	}
	//instance_destroy(self);
}


if(!hit and star and position_meeting(x ,y, objBossTwoHand)){
	with (playerInstance) {
		isScreenshake = 1;
		alarm[0] = screenshakeLength;
	}
	
	vspeed *= -1;
	speed *= .8;
	if(sprite_index == sprSuperStar){	
		audio_play_sound(sndEnemyHitHard, 11, false);
	}else{
		audio_play_sound(sndEnemyHitRegular, 11, false);
	}
	
	sprite_index = sprSaturn;
	star = false;
	if(reset){
		speed *= collisionSpeedMultiplier;
		reset = false;
		alarm[0] = resetCounter;
	}
	//instance_destroy(self);
}

if(!hit and star and position_meeting(x ,y, objBossTwoHead)){
	with (instance_find(objBossTwoHead, 0)){
		event_user(0);
	}
	
	with (playerInstance) {
		isScreenshake = 1;
		alarm[0] = screenshakeLength;
	}
	
	hit = true;
	vspeed *= -1;
	instance_destroy(instance_nearest(0, room_height, objEnemyHealth));
	if(instance_number(objEnemyHealth) == 0){
		event_perform_object(objChar, ev_other, ev_user1);
	}
	if(sprite_index == sprSuperStar){	
		instance_destroy(instance_nearest(0, room_height, objEnemyHealth));
		if(instance_number(objEnemyHealth) == 0){
			event_perform_object(objChar, ev_other, ev_user1);
		}
		audio_play_sound(sndEnemyHitHard, 11, false);
	}else{
		audio_play_sound(sndEnemyHitRegular, 11, false);
	}
	if(reset){
		speed *= collisionSpeedMultiplier;
		reset = false;
		alarm[0] = resetCounter;
	}
	//instance_destroy(self);
}

if(playerInstance.sprite_index != sprCharSwing){
	collided = false;
}

if(global.slowdown and !slow){
	slow = true;
	hspeed /= slowRate;
	vspeed /= slowRate;
}else if(!global.slowdown and slow){
	slow = false;
	hspeed *= slowRate;
	vspeed *= slowRate;
}

//rotate image based on hspeed
if(hspeed != 0){
	image_angle -= abs(hspeed) + (abs(vspeed)) * hspeed;
}else{
	image_angle -= abs(hspeed) + (abs(vspeed)) * playerInstance.image_xscale;
}

if(star and !(sprite_index != sprStar or spriteindex != sprSuperStar)){
	sprite_index = sprStar;
}else if(!star){
	//sprite_index = sprMoon;
}

/*if(abs(speed) < 1){
	image_alpha -= 0.03;
	if(image_alpha <= 0.05){
		instance_destroy(self);
	}
}*/

if(playerInstance.superActive){
	speed = 0;
}

depth = -y;

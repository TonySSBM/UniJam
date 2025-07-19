/// @description Ball Moving

//collision with side of screen
if(x < hBallBounds or x > (room_width - hBallBounds)){
	hspeed *= -1;
}

//collision with top wall
if(y <= ballBounds){
	vspeed *= -1;
}

//collision with the bottom wall
if(y >= (room_height - ballBounds)){
	instance_destroy(self);
}

//collision with player object
if(!collided and playerInstance.sprite_index == sprCharSwing and playerInstance.image_index > 1 and position_meeting(x ,y, playerInstance)){
	collided = true;
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
	if(speed > 7){
		sprite_index = sprSuperStar;
	}else{
		sprite_index = sprStar;
	}
}

if(star and position_meeting(x ,y, objBossOne)){
	instance_destroy(instance_nearest(0, room_height, objEnemyHealth));
	if(instance_number(objEnemyHealth) == 0){
		event_perform_object(objChar, ev_other, ev_user1);
	}
	if(sprite_index == sprSuperStar){	
		instance_destroy(instance_nearest(0, room_height, objEnemyHealth));
		if(instance_number(objEnemyHealth) == 0){
			event_perform_object(objChar, ev_other, ev_user1);
		}
	}
	instance_destroy(self);
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
	sprite_index = sprMoon;
}

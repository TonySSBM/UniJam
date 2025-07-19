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
	var actualReturnSpeed = playerInstance.returnSpeed + playerInstance.swingCharge;
	if(global.slowdown){
		actualReturnSpeed /= 2;
	}
	
	if(playerInstance.image_index == 2){
		vspeed = -0.6 * actualReturnSpeed;
		hspeed = -0.4 * actualReturnSpeed * playerInstance.image_xscale;;
	}
	else if(playerInstance.image_index == 3){
		vspeed = -1.0 * actualReturnSpeed;
		hspeed = 0.0 * actualReturnSpeed * playerInstance.image_xscale;;
	}
	else if(playerInstance.image_index >= 4){
		vspeed = -0.6 * actualReturnSpeed;
		hspeed = 0.4 * actualReturnSpeed * playerInstance.image_xscale;;
	}
	else{ //should never happen
		show_debug_message("Faulty Collision");
		vspeed *= -1;
		hspeed = -1 * playerInstance.image_xscale;
	}
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
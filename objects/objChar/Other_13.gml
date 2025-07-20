/// @description Super Finished

superActive = false;
swinging = false;
image_speed = 1;
sprite_index = sprCharIdle;

var newStar = instance_create_layer(x + 3,y - 54,layer, objStarSuper);
with (newStar) {
	image_speed = -2;
	image_xscale = 2;
	image_yscale = 2;
	maxStars = 3;
}

with (objBall) {
	collided = true;
	hit = false;
	star = true;
	var actualReturnSpeed = playerInstance.returnSpeed + playerInstance.swingCharge;
	if(global.slowdown){
		actualReturnSpeed /= 2;
	}
	
	show_debug_message(actualReturnSpeed);
	
	var swingAngle = random_range(55,65);
	var starSwing = irandom(2)
	
	if(starSwing <= 0){
		vspeed = -1.0 * lengthdir_x(actualReturnSpeed, swingAngle);
		hspeed = -1.0 * lengthdir_y(actualReturnSpeed, swingAngle) * playerInstance.image_xscale;
	}
	else if(starSwing == 1){
		vspeed = -1.0 * actualReturnSpeed;
		hspeed = 0.0 * actualReturnSpeed * playerInstance.image_xscale;
	}
	else if(starSwing >= 2){
		vspeed = -1.0 * lengthdir_x(actualReturnSpeed, swingAngle);
		hspeed = 1.0 * lengthdir_y(actualReturnSpeed, swingAngle) * playerInstance.image_xscale;
	}
	else{ //should never happen
		show_debug_message("Faulty Collision: " + string(playerInstance.image_index));
		vspeed *= -1;
		hspeed = -1 * playerInstance.image_xscale;
	}
	
	sprite_index = sprStar;
}
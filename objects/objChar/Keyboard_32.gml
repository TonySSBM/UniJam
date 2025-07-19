/// @description Charging Swing

if(!swinging){
	charging = true;
	swingCharge += chargeRate * delta_time / 1_000_000;
	if(sprite_index != sprCharSwing){
		sprite_index = sprCharSwing;
		image_index = 0;
		moveSpeed *= slowSpeedModifier;
	}
}

if(charging and image_index >= 1){
	image_index = 1;
	image_speed = 0;
}
/// @description Charging Swing

if(!swinging){
	charging = true;
	if(global.slowdown){
		swingCharge +=  chargeRate / 2 * delta_time / 1_000_000;
	}else{
		swingCharge += chargeRate * delta_time / 1_000_000;
	}
	if(sprite_index != sprCharCharge){
		sprite_index = sprCharCharge;
		audio_play_sound(sndCharge, 12, true);
		image_index = 0;
		moveSpeed *= slowSpeedModifier;
	}
}
/// @description Charging Swing

if(!swinging and !global.gamePaused){
	charging = true;
	if(global.slowdown){
		swingCharge +=  chargeRate / 2 * delta_time / 1_000_000;
	}else{
		swingCharge += chargeRate * delta_time / 1_000_000;
	}
	if(sprite_index != sprCharCharge){
		sprite_index = sprCharCharge;
		audio_play_sound(sndCharge, 12, true);
		particleCooldown = 5;
		image_index = 0;
		moveSpeed *= slowSpeedModifier;
	}
}

if(!global.gamePaused)
{
	particleCooldown = 10 - swingCharge;
	particleCounter = particleCounter + 1;
	if( particleCounter >= particleCooldown)
	{
		particleCounter = 0;
		if(returnSpeed + swingCharge >= chargeForPurple)
		{
			instance_create_layer(x, y, "Instances", objChargeSwingParticle);
		}
	}
}
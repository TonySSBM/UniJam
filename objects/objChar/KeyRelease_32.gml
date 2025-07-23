/// @description Release Swing
	
if(!swinging and !global.gamePaused){
	swinging = true;
	charging = false;
	audio_play_sound(sndSwing, 11, false);
	moveSpeed /= slowSpeedModifier;
	image_index = 0;
	sprite_index = sprCharSwing;
	if(audio_is_playing(sndCharge)){
		audio_stop_sound(sndCharge);
	}
}
if(global.gamePaused){
	charging = false;
	swinging = false;
	if(audio_is_playing(sndCharge)){
		audio_stop_sound(sndCharge);
	}
	if(audio_is_playing(sndSwing)){
		audio_stop_sound(sndSwing);
	}
	moveSpeed = 1.7;
}
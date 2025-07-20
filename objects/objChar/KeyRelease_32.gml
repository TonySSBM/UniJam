/// @description Release Swing
	
if(!swinging){
	swinging = true;
	charging = false;
	audio_play_sound(sndSwing, 11, false);
	moveSpeed /= slowSpeedModifier;
	image_index = 0;
	sprite_index = sprCharSwing;
}
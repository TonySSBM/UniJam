/// @description Release Swing

image_speed = 1;
	
if(!swinging){
	swinging = true;
	charging = false;
	audio_play_sound(sndSwing, 11, false);
	moveSpeed /= slowSpeedModifier;
}
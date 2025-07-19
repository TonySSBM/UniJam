/// @description Release Swing

image_speed = 1;
	
if(!swinging){
	swinging = true;
	charging = false;
	moveSpeed /= slowSpeedModifier;
}
/// @description Rest Animation State

if(sprite_index == sprCharSwing){
	swinging = false;
	sprite_index = sprCharIdle;
	swingCharge = 0;
	image_index = 0;
}

if(sprite_index == sprCharSuper){
	image_speed = 0;
	image_index = -1;
}
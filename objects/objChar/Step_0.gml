/// @description Animation State Controller

if(!swinging){
	if(vspeed == 0 and hspeed == 0){
		if(sprite_index != sprCharIdle){
			sprite_index = sprCharIdle;
			image_index = 0;
		}
	}else{
		if(sprite_index != sprCharWalk){
			sprite_index = sprCharWalk;
			image_index = 0;
		}
	}
}

/// @description Move Left

if((!superActive and !global.gamePaused) and !keyboard_check(vk_right)){
	//show_debug_message(superActive);
	if(!swinging && !charging){
		image_xscale = -1;
	}
	hspeed = -moveSpeed;
	/*
	if(!audio_is_playing(sndFootstep)){
		audio_play_sound(sndFootstep, 5, false);
	}
	*/
	if(keyboard_check(vk_up) ^^ keyboard_check(vk_down)){ //checks thru xor if theres normalization needed
		hspeed *= NORMALIZE_MOVEMENT;
	}
	
	if (x + hspeed <= hBounds){
		hspeed = 0;
	}
}

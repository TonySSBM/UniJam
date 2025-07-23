/// @description Move Up

if((!superActive and !global.gamePaused) and !keyboard_check(vk_down)){
	vspeed = -moveSpeed;
	/*
	if(!audio_is_playing(sndFootstep)){
		audio_play_sound(sndFootstep, 5, false);
	}
	*/
	if(keyboard_check(vk_left) ^^ keyboard_check(vk_right)){ //checks thru xor if theres normalization needed
		vspeed *= NORMALIZE_MOVEMENT;
	}
	
	if (y + vspeed <= room_height / 2 - vBounds){
		vspeed = 0;
	}
}

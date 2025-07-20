/// @description Move Down

if((!superActive) and !keyboard_check(ord("W"))){
	vspeed = moveSpeed;
	/*
	if(!audio_is_playing(sndFootstep)){
		audio_play_sound(sndFootstep, 5, false);
	}
	*/
	if(keyboard_check(ord("A")) ^^ keyboard_check(ord("D"))){ //checks thru xor if theres normalization needed
		vspeed *= NORMALIZE_MOVEMENT;
	}
	
	if (y + vspeed >= room_height - vBounds){
		vspeed = 0;
	}
}

/// @description Move Up

if((!superActive and !global.gamePaused) and !keyboard_check(ord("S"))){
	vspeed = -moveSpeed;
	/*
	if(!audio_is_playing(sndFootstep)){
		audio_play_sound(sndFootstep, 5, false);
	}
	*/
	if(keyboard_check(ord("A")) ^^ keyboard_check(ord("D"))){ //checks thru xor if theres normalization needed
		vspeed *= NORMALIZE_MOVEMENT;
	}
	
	if (y + vspeed <= room_height / 2 - vBounds){
		vspeed = 0;
	}
}

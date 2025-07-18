/// @description Move Up

if(!keyboard_check(ord("S"))){
	vspeed = -moveSpeed;
	if(keyboard_check(ord("A")) ^^ keyboard_check(ord("D"))){ //checks thru xor if theres normalization needed
		vspeed *= NORMALIZE_MOVEMENT;
	}
	
	if (y + vspeed <= room_height / 2 - vBounds){
		vspeed = 0;
	}
}

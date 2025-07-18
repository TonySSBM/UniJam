/// @description Move Down

if(!keyboard_check(ord("W"))){
	vspeed = moveSpeed;
	if(keyboard_check(ord("A")) ^^ keyboard_check(ord("D"))){ //checks thru xor if theres normalization needed
		vspeed *= NORMALIZE_MOVEMENT;
	}
}
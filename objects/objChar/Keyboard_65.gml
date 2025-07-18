/// @description Move Left

if(!keyboard_check(ord("D"))){
	image_xscale = -1;
	hspeed = -moveSpeed;
	if(keyboard_check(ord("W")) ^^ keyboard_check(ord("S"))){ //checks thru xor if theres normalization needed
		hspeed *= NORMALIZE_MOVEMENT;
	}else{
		//sprite_index = smth
	}
}
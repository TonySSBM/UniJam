/// @description Move Right

if(!keyboard_check(ord("A"))){
	hspeed = moveSpeed;
	image_xscale = 1;
	if(keyboard_check(ord("W")) ^^ keyboard_check(ord("S"))){ //checks thru xor if theres normalization needed
		hspeed *= NORMALIZE_MOVEMENT;
	}
	
	if(x + hspeed >= room_width - hBounds){
		hspeed = 0;
	}
}

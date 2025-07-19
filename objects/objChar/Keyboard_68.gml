/// @description Move Right

if(!keyboard_check(ord("A"))){
	if(!swinging && !charging){
		image_xscale = 1;
	}
	hspeed = moveSpeed;
	if(keyboard_check(ord("W")) ^^ keyboard_check(ord("S"))){ //checks thru xor if theres normalization needed
		hspeed *= NORMALIZE_MOVEMENT;
	}
	
	if(x + hspeed >= room_width - hBounds){
		hspeed = 0;
	}
}

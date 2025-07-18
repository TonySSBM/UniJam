/// @description KEY RELEASE

if(!(keyboard_check(ord("W")) ^^ keyboard_check(ord("S")))){ //checks thru inverse xor if it still needs speed
	vspeed = 0;
}

if(!(keyboard_check(ord("A")) ^^ keyboard_check(ord("D")))){ //checks thru inverse xor if it still needs speed
	hspeed = 0;
}
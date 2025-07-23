/// @description Sin Wave


if(side == 0){
	if((x + xPos) > hBounds xor (x + xPos) < (playerInstance.hBounds + 35)){
		xPos *= -1;
        show_debug_message("Flipped Left Hand. New xPos: " + string(xPos));
		show_debug_message(x + xPos);
		show_debug_message(hBounds);
		show_debug_message(playerInstance.hBounds);
	}
}else{
	if((x + xPos) > (room_width - (playerInstance.hBounds + 35)) xor (x + xPos) < (room_width - hBounds)){
		xPos *= -1;
        show_debug_message("Flipped Right Hand. New xPos: " + string(xPos));
	}
}

if ((y + yPos) < 30) or (y + yPos > 64){
	yPos *= -1;
}

if(global.slowdown and !slow){
	slow = true;
	moveSpeed /= slowRate;
}else if(!global.slowdown and slow){
	slow = false;
	moveSpeed *= slowRate;
}

if(!playerInstance.superActive){
	x += xPos * moveSpeed;
	y += yPos * moveSpeed;
}

if (flash_timer > 0) {
    flash_timer--;
    if (flash_timer == 0) {
        image_blend = c_white;
    }
}

depth = -y;
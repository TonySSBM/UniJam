/// @description Sin Wave

if(!global.gamePaused){
	if ((y + yPos) < -10) or (y + yPos > 0){
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
		y += yPos * moveSpeed;
	}

	if (flash_timer > 0) {
	    flash_timer--;
	    if (flash_timer == 0) {
	        image_blend = c_white;
	    }
	}

	depth = -y - 1;
}
/// @description Sin Wave

if(!global.gamePaused){
	if(x + xPos > room_width - hBounds){
		xPos = -1;
	}else if(x + xPos < hBounds){
		xPos = 1;
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

		var amplitude = 8
		var frequency = 0.13;

		var baseY = .67 * sprite_get_height(sprBossOneAttack) - 105; 

		y = baseY + sin(x * frequency) * amplitude;
	}

	if (flash_timer > 0) {
	    flash_timer--;
	    if (flash_timer == 0) {
	        image_blend = c_white;
	    }
	}

	depth = -y;
}

if(global.slowdown)
{
	image_speed = 0.5;
}
else
{
	image_speed = 1;	
}
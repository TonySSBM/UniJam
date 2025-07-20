/// @description Sin Wave

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

	var baseY = .67 * sprite_get_height(sprBossOneAttack); 

	y = baseY + sin(x * frequency) * amplitude;
}

depth = -y;
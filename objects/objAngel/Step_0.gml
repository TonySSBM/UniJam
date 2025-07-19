/// @description Following

if(distance_to_object(objChar) > 20){
	if (x < objChar.x){ move_and_collide(random_range(0.6, 1.4), 0, objAngel); image_xscale = 1; } else { move_and_collide(random_range(-1.4, -0.6), 0, objAngel); image_xscale = -1; }	
	if (y < objChar.y){ move_and_collide(0, random_range(0.6, 1.4), objAngel); } else { move_and_collide(0, random_range(-1.4, -0.6), objAngel); }
}else{
	
	if(x + image_xscale > objChar.x + 10){
		image_xscale = -1;
	}else if(x + image_xscale < objChar.x - 10){
		image_xscale = 1;
	}
	x += image_xscale * 0.5;
	
	var amplitude = 2.5;
	var frequency = 0.4;

	var baseY = objChar.y;

	y = baseY - 10 + sin(x * frequency) * amplitude;
}


if(global.slowdown or ((charInstance.returnSpeed + charInstance.swingCharge) > 7)){
	image_speed = 4;
}else{
	image_speed = 1;
}

depth = -y;
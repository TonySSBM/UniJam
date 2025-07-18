/// @description Ball Moving

//collision with side of screen
if(x < ballBounds or x > (room_width - ballBounds)){
	hspeed *= -1;
}

//collision with top wall
if(y <= ballBounds){
	vspeed *= -1;
}

//collision with the bottom wall
if(y >= (room_height - ballBounds)){
	instance_destroy(self);
}

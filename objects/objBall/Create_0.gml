/// @description Initializing Variables

ballDirection = 0; //??? do i want ball direction or do i just change it based on the rotation of the sprite idfk
baseSpeed = 4;
actualSpeed = 4;

slow = false;
slowRate = 2;

star = true; //false = planet

ballBounds = 30;
hBallBounds = 208;

vspeed = baseSpeed;
hspeed = 0;

playerInstance = instance_find(objChar, 0);
collided = false;
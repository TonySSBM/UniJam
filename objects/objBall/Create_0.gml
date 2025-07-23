/// @description Initializing Variables

ballDirection = 0; //??? do i want ball direction or do i just change it based on the rotation of the sprite idfk
baseSpeed = 4;
actualSpeed = 4;

slow = false;
slowRate = 3;

star = false; //false = planet

ballBounds = 30;
hBallBounds = 208;

vspeed = baseSpeed;
hspeed = random_range(-1.8,1.8);

playerInstance = instance_find(objChar, 0);
collided = false;
hit = false;
reset = true;
resetCounter = 20;

image_xscale = .7;
image_yscale = .7;

collisionSpeedMultiplier = 0.8;

oobFrames = 0;
oobTotalFrames = 0;
oobMax = 120;
oobTotalMax = 600;
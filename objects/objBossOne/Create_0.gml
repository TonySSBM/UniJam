/// @description Initializing Variables

firingTime = 4;
image_speed = 0;

alarm[0] = firingTime * 60;

xPos = 1;
moveSpeed = 0.5;
hBounds = objChar.hBounds + (.25 * sprite_get_width(sprBossOne)); 
slow = false;
slowRate = 2;
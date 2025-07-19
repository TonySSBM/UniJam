/// @description Initializing Variables

firingTime = 4;

alarm[0] = firingTime * 60;

xPos = 1;
moveSpeed = 0.5;
hBounds = objChar.hBounds + (.25 * sprite_get_width(sprBossOneAttack)); 
slow = false;
slowRate = 2;
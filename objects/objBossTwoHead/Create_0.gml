/// @description Initializing Variables

firingTime = 4;

alarm[0] = firingTime * 60;

xPos = 1;
moveSpeed = 0.3;
hBounds = objChar.hBounds + (.45 * sprite_get_width(sprBossTwoHandIdle)); 
slow = false;
slowRate = 2;

playerInstance = instance_find(objChar, 0);

flash_timer = 0;

hands = [instance_find(objBossTwoHand, 0), instance_find(objBossTwoHand, 1)];
/// @description Initializing Variables

xPos = 1;
moveSpeed = 0.3;
hBounds = objChar.hBounds + (.45 * sprite_get_width(sprBossTwoHandIdle)); 
slow = false;
slowRate = 2;

playerInstance = instance_find(objChar, 0);

flash_timer = 0;

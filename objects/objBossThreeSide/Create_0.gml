/// @description Initializing Variables


firingTime = 6;

alarm[0] = firingTime * 60 * random_range(0.5,1.5);

playerInstance = instance_find(objChar, 0);

flash_timer = 0;

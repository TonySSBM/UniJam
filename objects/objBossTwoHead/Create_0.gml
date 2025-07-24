/// @description Initializing Variables

firingTime = 4;

alarm[0] = firingTime * 60;

xPos = 1;
moveSpeed = 0.2;

hBounds = objChar.hBounds + (0.7 * sprite_get_width(sprBossTwoHandIdle)); 
slow = false;
slowRate = 2;

playerInstance = instance_find(objChar, 0);

flash_timer = 0;

hands = [instance_find(objBossTwoHand, 0), instance_find(objBossTwoHand, 1)];

bossHealth = 1;
healthList = ds_list_create();

event_user(1);
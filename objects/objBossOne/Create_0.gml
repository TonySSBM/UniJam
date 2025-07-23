/// @description Initializing Variables

firingTime = 4;

alarm[0] = firingTime * 60;

xPos = 1;
moveSpeed = 0.5;
hBounds = objChar.hBounds + (.25 * sprite_get_width(sprBossOneAttack)); 
slow = false;
slowRate = 2;

playerInstance = instance_find(objChar, 0);

flash_timer = 0;

bossHealth = 1/*8*/;
healthList = ds_list_create();

event_user(1);


/// @description Initializing Variables

firingTime = 6;

alarm[0] = firingTime * 60 * random_range(0.5,1.18);

playerInstance = instance_find(objChar, 0);

flash_timer = 0;

sides = [instance_find(objBossThreeSide, 0), instance_find(objBossThreeSide, 1)];

bossHealth = 6;
healthList = ds_list_create();

yPos = 1;
slow = false;
moveSpeed = 0.07;
slowRate = 2;

event_user(1);
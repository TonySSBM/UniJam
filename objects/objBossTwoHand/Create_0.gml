/// @description Initializing Variables

xPos = 1;
yPos = 1;
moveSpeed = 0.18;
slow = false;
slowRate = 2;

playerInstance = instance_find(objChar, 0);

side = 0;
if(x < room_width / 2){
	side = 0;
}else{
	side = 1;
}

show_debug_message("Hand created on side: " + string(side));

hBounds = objChar.hBounds + (0.55 * sprite_get_width(sprBossTwoHandIdle));

flash_timer = 0;

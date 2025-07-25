/// @description White Flash On Hit

image_blend = c_silver;
flash_timer = 15;

for(var i = 0; i < 2; i++){
	with (sides[i]) {
		event_user(0);
	}
}

global.isEnemyHit = global.alienCheerTimer;
/// @description Enemy Defeated

if(instance_number(objBossOne) != 0){
	instance_destroy(objBossOne);
	audio_play_sound(sndBossDefeated, 11, false);
}

/*
if(instance_number(objBossTwo) != 0){
	instance_destroy(objBossTwo);
}

if(instance_number(objBossThree) != 0){
	instance_destroy(objBossThree);
}*/
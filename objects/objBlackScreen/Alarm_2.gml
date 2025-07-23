/// @description fade out - game actually starts again

//game actually starts again
if(bossCheck == 1){
	audio_stop_sound(sndBossOneRoar);
	instance_find(objBossOne, 0).sprite_index = sprBossOneIdle;
} else if (bossCheck == 2){
	audio_stop_sound(sndBossTwoRoar);
	instance_find(objBossTwoHead, 0).sprite_index = sprBossTwoHeadIdle;
	instance_find(objBossTwoHand, 0).sprite_index = sprBossTwoHandIdle;
	instance_find(objBossTwoHand, 1).sprite_index = sprBossTwoHandIdle;
} else {
	audio_stop_sound(sndBossThreeRoar);
	instance_find(objBossThreeMid, 0).sprite_index = sprBossThreeIdleMiddle;
	instance_find(objBossThreeSide, 0).sprite_index = sprBossThreeIdleLeft;
	instance_find(objBossThreeSide, 1).sprite_index = sprBossThreeIdleLeft;
}

bossCheck = 0;
global.gamePaused = false;
done = false;

show_debug_message("game is back");

//make screen fade out
var bossscreen = instance_find(objBossTitle, 0);
bossscreen.fade = true;
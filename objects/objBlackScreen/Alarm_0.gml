/// @description boss roar + intro animation + screenshake play on same frame


if(bossCheck == 1){
	audio_play_sound(sndBossOneRoar, 11, false);
	instance_find(objBossOne, 0).sprite_index = sprBossOneIntro;
} else if (bossCheck == 2){
	audio_play_sound(sndBossTwoRoar, 11, false);
	instance_find(objBossTwoHead, 0).sprite_index = sprBossTwoHeadIntro;
	instance_find(objBossTwoHand, 0).sprite_index = sprBossTwoHandIntro;
	instance_find(objBossTwoHand, 1).sprite_index = sprBossTwoHandIntro;
} else {
	audio_play_sound(sndBossThreeRoar, 11, false);
	instance_find(objBossThreeMid, 0).sprite_index = sprBossThreeIntroMiddle;
	instance_find(objBossThreeSide, 0).sprite_index = sprBossThreeIntroLeft;
	instance_find(objBossThreeSide, 1).sprite_index = sprBossThreeIntroLeft;
}

show_debug_message("Boss Number: " + string(bossCheck));

var player = instance_find(objChar, 0);
player.isScreenshake = 1;
player.alarm[0] = bossRoarLength * 60;

//wait for like 0.5-1s
alarm[1] = bossRoarLength * 60;
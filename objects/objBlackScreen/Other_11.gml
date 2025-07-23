/// @description Boss Introduction 2

global.gamePaused = true;
with(objChar){
	sprite_index = sprCharIdle;
	swinging = false;
	charging = false;
	superActive = false;
}
audio_stop_sound(sndCharge);
image_alpha = 0.012;
alarm[3] = 2.5 * 60;

if(instance_number(objBossTwoHead) != 0){
	instance_find(objBossTwoHead, 0).image_alpha = 0;
	with(objBossTwoHand){
		image_alpha = 0;
	}
}
if(instance_number(objBossThreeBody) != 0){
	instance_find(objBossThreeBody, 0).image_alpha = 0;
	instance_find(objBossThreeMid, 0).image_alpha = 0;
	with(objBossThreeSide){
		image_alpha = 0;
	}
}
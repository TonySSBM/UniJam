/// @description Boss Introduction

//figure out what boss we are on
if(instance_number(objBossOne) != 0){
	bossCheck = 1;
}else if(instance_number(objBossTwoHead) != 0){
	bossCheck = 2;
}else if(instance_number(objBossThreeBody) != 0){
	bossCheck = 3;
}

show_debug_message("On Boss number: " + string(bossCheck));

if(bossCheck == 0 or bossCheck > 3){
	show_debug_message("wtf happened here");
}

//black screen slowly fades out
image_alpha = 1;
global.gamePaused = true;
with(objChar){
	sprite_index = sprCharIdle;
	swinging = false;
	charging = false;
	superActive = false;
	x = 320;
	y = 288;
}
audio_stop_sound(sndCharge);
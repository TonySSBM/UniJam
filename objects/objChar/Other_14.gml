/// @description Boss Introduction

var bossCheck = 0;

if(instance_number(objBossOne) != 0){
	bossCheck = 1;
}else if(instance_number(objBossTwoHead) != 0){
	bossCheck = 2;
}else if(instance_number(objBossThreeBody) != 0){
	bossCheck = 3;
}

if(bossCheck == 0 or bossCheck > 3){
	show_debug_message("wtf happened here");
}

//black screen slowly fades out

//after finishes faded + 1-2s

//boss roar + intro animation + screenshake play on same frame

//wait for like 0.5-1s

// screen with boss name

//wait for another 0.5-1s

//fade out - game actually starts again


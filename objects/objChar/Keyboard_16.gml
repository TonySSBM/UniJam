/// @description Slowdown

if(meter > 0 and meter < 100){
	if(!global.slowdown){
		audio_play_sound(sndSpeedDown, 11, false);
	}
	
	if(!audio_is_playing(sndClockTicking)){
		audio_play_sound(sndClockTicking, 11, true);
	}
	meter -= meterRate * delta_time / 1_000_000;
	show_debug_message("Meter After: " + string(meter));
	global.slowdown = true;

	if(instance_number(objBossOne) != 0){
		objBossOne.alarm[0]++;
	}
	
	if(instance_number(objBossTwoHead) != 0){
		objBossTwoHead.alarm[0]++;
	}
	
	if(instance_number(objBossThreeMid) != 0){
		objBossThreeMid.alarm[0]++;
		objBossThreeSide.alarm[0]++;
	}
	
}else{
	global.slowdown = false;
}
/// @description Slowdown

if(meter > 0){
	meter -= meterRate * delta_time / 1_000_000;
	show_debug_message("Meter After: " + string(meter));
	global.slowdown = true;
	objBossOne.alarm[0]++;
	/*objBossTwo.alarm[0];
	objBossThree.alarm[0];*/
}else{
	global.slowdown = false;
}
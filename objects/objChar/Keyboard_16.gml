/// @description Slowdown

if(meter > 0 and meter < 100){
	meter -= meterRate * delta_time / 1_000_000;
	show_debug_message("Meter After: " + string(meter));
	global.slowdown = true;

	if(instance_number(objBossOne) != 0){
		objBossOne.alarm[0]++;
	}
	/*
	if(instance_number(objBossTwo) != 0){
		objBossTwo.alarm[0]++;
	}
	if(instance_number(objBossThree) != 0){
		objBossThree.alarm[0]++;
	}
	*/
}else{
	global.slowdown = false;
}
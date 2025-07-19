/// @description Slowdown

if(meter > 0){
	meter -= meterRate * delta_time / 1_000_000;
	show_debug_message("Meter After: " + string(meter));
	global.slowdown = true;
}else{
	global.slowdown = false;
}
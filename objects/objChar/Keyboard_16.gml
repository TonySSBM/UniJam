/// @description Slowdown

if(meter > 0){
	meter -= meterRate;
	global.slowdown = true;
}else{
	global.slowdown = false;
}
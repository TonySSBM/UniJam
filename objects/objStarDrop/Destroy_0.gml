/// @description Build Meter

var previousMeter = playerInstance.meter;

playerInstance.meter += meterGain;
if(playerInstance.meter > 100){
	playerInstance.meter = 100;
}
audio_play_sound(sndCollectMeter, 11, false);

if(previousMeter != 100 and playerInstance.meter == 100){
	audio_play_sound(sndMeterFull, 11, false);
	global.meterFull = 1;
}
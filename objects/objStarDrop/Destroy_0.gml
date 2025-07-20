/// @description Build Meter

playerInstance.meter += meterGain;
if(playerInstance.meter > 100){
	playerInstance.meter = 100;
}
audio_play_sound(sndCollectMeter, 11, false);
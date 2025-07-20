/// @description Stop Slowdown

global.slowdown = false;
if(audio_is_playing(sndSpeedDown)){
	audio_stop_sound(sndSpeedDown);
}
if(audio_is_playing(sndClockTicking)){
	audio_stop_sound(sndClockTicking);
}
audio_play_sound(sndSpeedUp, 11, false);
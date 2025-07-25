/// @description victory anim + sound

global.isEnemyHit = 1000


//character transitions to victory animation and victory sound plays
show_debug_message("made it to 1");
global.gamePaused = true;
sprite_index = sprCharWin;
swinging = false;
charging = false;
superActive = false;
audio_stop_sound(sndCharge);
audio_play_sound(sndWin, 11, false);
show_debug_message("win sound should play");

//after sound finishes, fade to black
alarm[2] = 2.2 * 60;
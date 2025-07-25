/// @description Game Over

//room_goto(3);

//isGameOver = true;



global.gamePaused = true;
//sprite_index = sprCharGameOver;

swinging = false;
charging = false;
superActive = false;
audio_stop_sound(sndCharge);
audio_stop_sound(sndUpbeatMusic);
audio_play_sound(sndGameOver, 11, false);

instance_create_layer(0, 0, "Instances", objGameOverFade);
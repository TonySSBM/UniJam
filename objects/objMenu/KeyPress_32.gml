/// @description Room Change

if(image_index < 5){
	image_index += 1;
	audio_play_sound(sndMenuSelect, 11, false);
}else{
	room_goto_next();
}
/// @description fade to black

with(objBlackScreen){
	image_alpha = 0.012;
}

show_debug_message("screen should go black");
//after time is done, go to next room
alarm[3] = 2 * 60;

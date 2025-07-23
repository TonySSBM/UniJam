/// @description Screen with boss name

//make screen appear
show_debug_message("where boss screen would normally be");
var titlescreen = instance_create_layer(0, 0, layer, objBossTitle);
titlescreen.image_index = bossCheck - 1;
audio_play_sound(sndBossTextThump, 11, false);

//wait for another 0.5-1s
alarm[2] = 1 * 60;
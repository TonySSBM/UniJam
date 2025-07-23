/// @description 

image_alpha -= 0.006;

//after finishes faded + 1-2s
if(image_alpha <= 0.5 and bossCheck != 0 and !done){
	done = true;
	show_debug_message("Image alpha faded!");
	alarm[0] = 1.5 * 60;
}

if(bossCheck == 0 and image_alpha > 0){
	image_alpha += 0.015;
}

depth = - 1_000_002;
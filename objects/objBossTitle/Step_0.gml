/// @description Insert description here
// You can write your code in this editor

if(fade){
	image_alpha -= 0.01;
}

if(image_alpha < 0.2){
	instance_destroy(self);
}
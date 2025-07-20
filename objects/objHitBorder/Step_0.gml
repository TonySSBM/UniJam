/// @description Lower Opacity Until Destruction

image_alpha -= opacityRate;
if(image_alpha <= 0.05){
	instance_destroy(self);
}
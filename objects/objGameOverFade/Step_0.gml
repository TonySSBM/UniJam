/// @desc 

image_alpha = image_alpha + 0.01;

if(image_alpha >= 1)
{
	instance_destroy();
}

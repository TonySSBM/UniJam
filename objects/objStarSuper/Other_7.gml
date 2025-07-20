/// @description Increment Star Counter

currentStars += 1;
if(currentStars >= maxStars){
	instance_destroy(self);
}
/// @description Super Move

if(meter >= 100 and !swinging and !charging){
	meter = 0;
	swinging = true;
	charging = false;
	swingCharge = 0;
	
	//super move animation
	sprite_index = sprCharSuper;
	speed = 0;
	image_xscale = 1;
	superActive = true;
	if(instance_number(objStarSuper) <= 0){
		var newStar = instance_create_layer(x + 3,y - 54,layer, objStarSuper);
		with (newStar) {
			image_speed = 1.3;
			maxStars += 2;
		}
	}
}
		
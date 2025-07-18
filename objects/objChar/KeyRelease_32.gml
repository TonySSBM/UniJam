/// @description Release Swing

if(!swinging){
	swinging = true;
	charging = false;
	
	var actualReturnSpeed = returnSpeed + swingCharge;
	
	sprite_index = sprCharSwing;
}
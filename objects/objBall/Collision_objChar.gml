/// @description Player Swing

if(other.swinging){
	//actual collision - this event might break everything so keep that in mind
}

vspeed *= -1;
hspeed = -1 * other.image_xscale;
/// @description Create Particles

for(var i = 0; i < 40; i++){
	var starDrop = instance_create_layer(x, y, layer, objBossDrop);
}

audio_stop_sound(sndUpbeatMusic);

with(objBall)
{
	star = true;
	instance_destroy(self);
}
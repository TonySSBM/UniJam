/// @description Create Shards

audio_play_sound(sndShatter, 10, false);

audio_play_sound(sndPlayerHit, 11, false);

if(instance_number(objHitBorder) != 0){
	instance_destroy(objHitBorder);
}
instance_create_layer(0,0,"HUDInstances",objHitBorder);
/// @description Create Shards

audio_play_sound(sndShatter, 10, false);


for(var i = 0; i < 5; i++){
	var starDrop = instance_create_layer(x, y, layer, objEnemyHealthShard);
}

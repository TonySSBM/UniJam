/// @description Start Firing

image_index = 0;
sprite_index = sprBossTwoHeadAttack;

for(var i = 0; i < 2; i++){
	with (hands[i]) {
		image_index = 0;
		sprite_index = sprBossTwoHandAttack;
	}
}
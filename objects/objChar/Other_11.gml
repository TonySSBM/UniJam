/// @description Enemy Defeated


/*
if(instance_number(objBossThree) != 0){
	instance_destroy(objBossThree);
	//go to win screen
}*/


if(instance_number(objBossTwoHead) != 0){
	instance_destroy(objBossTwoHead);
	instance_destroy(objBossTwoHand);
	audio_play_sound(sndBossDefeated, 11, false);
	
	show_debug_message(global.positionXList);
	show_debug_message(global.positionYList);
	
	//read enemyhealth
	for(var i = 0; i < array_length(global.positionXList); i++){
		var newHealth = instance_create_layer(global.positionXList[i], global.positionYList[i], layer_get_id("HUDInstances"), objEnemyHealth);
		newHealth.depth = -y;
		show_debug_message("new health: " + string(newHealth.x) + " " + string(newHealth.y));
	}
	
	//create boss three
}


show_debug_message("hi");
show_debug_message(array_length(global.positionXList));
if(instance_number(objBossOne) != 0){
	show_debug_message("hi");
	instance_destroy(objBossOne);
	audio_play_sound(sndBossDefeated, 11, false);

	show_debug_message(global.positionXList);
	show_debug_message(global.positionYList);
	
	//read enemyhealth
	for(var i = 0; i < array_length(global.positionXList); i++){
		var newHealth = instance_create_layer(global.positionXList[i], global.positionYList[i], layer_get_id("HUDInstances"), objEnemyHealth);
		newHealth.depth = -y;
		show_debug_message("new health: " + string(newHealth.x) + " " + string(newHealth.y));
	}
	
	var lh = instance_create_layer(294, 64, layer, objBossTwoHand);
	var mh = instance_create_layer(320, 64, layer, objBossTwoHead);
	var rh = instance_create_layer(346, 64, layer, objBossTwoHand);
	rh.image_xscale *= -1;
}

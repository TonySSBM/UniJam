/// @description Enemy Defeated


if(instance_number(objBossThreeMid) != 0){
	instance_destroy(objBossThreeMid);
	instance_destroy(objBossThreeSide);
	instance_destroy(objBossThreeBody);
	//go to win screen
	room_goto_previous();
}


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
	var lh = instance_create_layer(250, 81, layer, objBossThreeSide);
	var mh = instance_create_layer(320, 97, layer, objBossThreeMid);
	var rh = instance_create_layer(388, 81, layer, objBossThreeSide);
	var bh = instance_create_layer(320, 0, layer, objBossThreeBody);
	
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

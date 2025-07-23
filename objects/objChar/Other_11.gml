/// @description Enemy Defeated


if(instance_number(objBossThreeMid) != 0 and ds_list_size(objBossThreeMid.healthList) == 0){
	instance_destroy(objBossThreeMid);
	
	//go to win screen
	if(instance_number(objBossThreeSide) == 0){	
		instance_destroy(objBall);
		instance_destroy(objBossThreeBody);
		audio_stop_all();
		show_debug_message("COMPLETED GAME");
		room_goto_next();
	}
}

if(instance_number(objBossThreeSide) != 0){
	with (objBossThreeSide){
		if(ds_list_size(healthList) == 0){
			instance_destroy(self);
		}
	}
	
	//go to win screen
	if(instance_number(objBossThreeMid) == 0 and instance_number(objBossThreeSide) == 0){	
		instance_destroy(objBall);
		instance_destroy(objBossThreeBody);
		audio_stop_all();
		show_debug_message("COMPLETED GAME");
		room_goto_next();
	}
}


if(instance_number(objBossTwoHead) != 0){
	instance_destroy(objBossTwoHead);
	instance_destroy(objBossTwoHand);
	audio_play_sound(sndBossDefeated, 11, false);
	
	//create boss three
	var lh = instance_create_layer(256, 0, layer, objBossThreeSide);
	var mh = instance_create_layer(320, 0, layer, objBossThreeMid);
	var rh = instance_create_layer(384, 0, layer, objBossThreeSide);
	rh.image_xscale = -1;
	var bh = instance_create_layer(320, 0, layer, objBossThreeBody);
	
}

if(instance_number(objBossOne) != 0){
	show_debug_message("hi");
	instance_destroy(objBossOne);
	audio_play_sound(sndBossDefeated, 11, false);
	
	var lh = instance_create_layer(260, 64, layer, objBossTwoHand);
	var mh = instance_create_layer(320, 64, layer, objBossTwoHead);
	var rh = instance_create_layer(380, 64, layer, objBossTwoHand);
	rh.image_xscale *= -1;
}

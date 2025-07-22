/// @description Create Enemy Health HUD

if(pos == 0){
	for(var i = 0; i < bossHealth; i++){
		var eh = instance_create_layer(525, 31 * i + 21, layer_get_id("HUDInstances"), objEnemyHealth);
		ds_list_add(healthList, eh);
	}
}else{
	for(var i = 0; i < bossHealth; i++){
		var eh = instance_create_layer(585, 31 * i + 21, layer_get_id("HUDInstances"), objEnemyHealth);
		ds_list_add(healthList, eh);
	}
}
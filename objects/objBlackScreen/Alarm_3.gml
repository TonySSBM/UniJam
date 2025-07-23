/// @description Start Delay

if(instance_number(objBossTwoHead) != 0){
	instance_find(objBossTwoHead, 0).image_alpha = 1;
	with(objBossTwoHand){
		image_alpha = 1;
	}
}
if(instance_number(objBossThreeBody) != 0){
	instance_find(objBossThreeBody, 0).image_alpha = 1
	instance_find(objBossThreeMid, 0).image_alpha = 1;
	with(objBossThreeSide){
		image_alpha = 1;
	}
}
event_user(0);
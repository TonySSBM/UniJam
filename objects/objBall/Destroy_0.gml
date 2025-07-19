/// @description 

if(!star){ //Star
	instance_destroy(instance_nearest(0, room_height, objPlayerHealth));

	if(instance_number(objPlayerHealth) == 0){
		event_perform_object(objChar, ev_other, ev_user0);
	}
}
	
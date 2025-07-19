/// @description Initializing Variables

timer = 0;
rotationSpeed = 0.02;
amplitude = 20;
timerStarted = false;


for (i = 0; i < instance_number(objEnemyHealth); i++){
	var inst = instance_find(objEnemyHealth, i);
	if(inst.id == id){
		if(i == 0){
			timerStarted = true;
		}else{
			alarm[0] = i * 8;
		}
		break;
	}
}
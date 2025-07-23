/// @description Animation State Controller

if(!swinging and !charging  and !global.gamePaused){
	if(vspeed == 0 and hspeed == 0){
		if(sprite_index != sprCharIdle){
			sprite_index = sprCharIdle;
			image_index = 0;
		}
	}else{
		if(sprite_index != sprCharWalk){
			sprite_index = sprCharWalk;
			image_index = 0;
		}
	}
}

depth = -y;
if(moveSpeed > baseMoveSpeed){
	moveSpeed = baseMoveSpeed;
}


if(superActive or global.gamePaused){
	if(instance_number(objBossOne) != 0){
		objBossOne.alarm[0]++;
	}
	
	if(instance_number(objBossTwoHead) != 0){
		objBossTwoHead.alarm[0]++;
	}
	
	if(instance_number(objBossThreeMid) != 0){
		objBossThreeMid.alarm[0]++;
	}
	
	if(instance_number(objBossThreeSide) != 0){
		with(objBossThreeSide){
			alarm[0]++;
		}
	}
}

if(isScreenshake == 1)
{
    camera_set_view_pos(view_camera[0], 5, 5);
    camera_set_view_pos(view_camera[0], irandom_range(screenshakePower * -1, screenshakePower), irandom_range(screenshakePower * -1, screenshakePower));
}
else
{
    camera_set_view_pos(view_camera[0], 0, 0);
}
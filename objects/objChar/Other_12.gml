/// @description Spawn Alien Audience

//x: 150-174 and 463-487
//y: 20-340


var j = 0;
for(var i = 20; i <= 340; i += 20){
	if(j % 2 == 0){
		//spawn left side
		instance_create_layer(155, i, layer, objAlien);
	
		//spawn right side
		instance_create_layer(468, i, layer, objAlien);
		
	}else{
		//spawn left side
		instance_create_layer(171, i, layer, objAlien);
	
		//spawn right side
		instance_create_layer(484, i, layer, objAlien);
	}
	
	j += 1;
	if (j % 4 == 0){
		i += 40;
	}
}
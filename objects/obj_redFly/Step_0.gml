if(instance_exists(obj_playerLizard)){
	//change to faded version if player color is different
	if(obj_playerLizard.sprite_index = spr_blueLizard or 
	obj_playerLizard.sprite_index = spr_blueLizardAttack){
		image_alpha = 0.3
	}
	else{
		image_alpha = 1	
	}
}
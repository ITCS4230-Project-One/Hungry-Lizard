if(instance_exists(obj_playerLizard)){
	//change to faded version if player color is different
	if(obj_playerLizard.sprite_index = spr_redLizard or 
	obj_playerLizard.sprite_index = spr_redLizardAttack){
		image_alpha = 0.3
	}
	else{
		image_alpha = 1
	}
}

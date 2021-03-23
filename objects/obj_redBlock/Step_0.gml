if(instance_exists(obj_playerLizard)){
	//change to faded version if player color is different
	if(obj_playerLizard.sprite_index = spr_blueLizard or 
	obj_playerLizard.sprite_index = spr_blueLizardAttack){
		instance_create_layer(x,y,"instances_blocks",obj_redFade)
		instance_destroy()
	}
}
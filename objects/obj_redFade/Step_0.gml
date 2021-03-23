if(instance_exists(obj_playerLizard)){
	//change to normal version if player color is the same
	if(obj_playerLizard.sprite_index = spr_redLizard or 
	obj_playerLizard.sprite_index = spr_redLizardAttack){
		instance_create_layer(x,y,"instances_blocks",obj_redBlock)
		instance_destroy()
	}
}
if(instance_exists(obj_playerLizard)){
	//change to faded version if player color is different
	if(obj_playerLizard.sprite_index = spr_redLizard or 
	obj_playerLizard.sprite_index = spr_redLizardAttack){
		instance_create_layer(x,y,"instances_blocks",obj_blueFade)
		instance_destroy()
	}
}
	
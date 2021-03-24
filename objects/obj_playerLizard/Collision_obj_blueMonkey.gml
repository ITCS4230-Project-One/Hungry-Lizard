if (sprite_index = spr_blueLizardAttack){	
	instance_destroy(other)
	score += 200
}	
else{
	instance_destroy(other)
	hp -= 25
}


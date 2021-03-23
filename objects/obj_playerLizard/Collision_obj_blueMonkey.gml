/// @description Insert description here
// You can write your code in this editor
if(other.image_alpha = 1){

	if(other.image_blend = c_red){
		if (sprite_index = spr_redLizardAttack){
			instance_destroy(other)
			score += 200
		}	else{
			instance_destroy(other)
			hp -= 25
		}
	}
	else if(other.image_blend = c_lime){
		if(sprite_index = spr_blueLizardAttack	 or sprite_index = spr_redLizardAttack){
			instance_destroy(other)
			score += 200
		}	else{
			instance_destroy(other)
			hp -= 25
		}
	}
	else{
		if (sprite_index = spr_blueLizardAttack){	
			instance_destroy(other)
			score += 200
		}	else{
			instance_destroy(other)
			hp -= 25
		}
	}

}
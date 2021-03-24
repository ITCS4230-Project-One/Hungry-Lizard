if(other.image_alpha = 1){

	if(other.image_blend = c_red){
		if (sprite_index = spr_redLizardAttack){
			instance_destroy(other)
			score += 100
		}	else{
			instance_destroy(other)
			hp -= 20
			audio_play_sound(touch_enemy, 2, false)
		}
	}
	else if(other.image_blend = c_lime){
		if(sprite_index = spr_blueLizardAttack	 or sprite_index = spr_redLizardAttack){
			instance_destroy(other)
			score += 100
		}	else{
			instance_destroy(other)
			hp -= 20
			audio_play_sound(touch_enemy, 2, false)
		}
	}
	else{
		if (sprite_index = spr_blueLizardAttack){	
			instance_destroy(other)
			score += 100
		}	else{
			instance_destroy(other)
			hp -= 20
			audio_play_sound(touch_enemy, 2, false)
		}
	}

}
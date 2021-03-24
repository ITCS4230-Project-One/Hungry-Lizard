if (sprite_index = spr_redLizardAttack){	
	instance_destroy(other)
	score += 200
}	
else{
	instance_destroy(other)
	hp -= 25
	audio_play_sound(touch_enemy, 2, false)
}	

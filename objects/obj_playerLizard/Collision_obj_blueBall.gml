if(other.image_alpha = 1){
	instance_destroy(other)	
	audio_play_sound(ball_hit, 2, false)
	hp -= 15
}
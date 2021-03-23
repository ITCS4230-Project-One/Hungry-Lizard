//spacebar to change the lizard from red or blue
if (keyboard_check_pressed(vk_space) and sprite_index != spr_redLizardAttack and sprite_index != spr_blueLizardAttack){
	if(sprite_index = spr_blueLizard){
		sprite_index = spr_redLizard
	}
	else{
		sprite_index = spr_blueLizard	
	}
}


if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block)) {
		x += -move_speed
		image_xscale = -1
		
}
	
	
if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block)){ //
		x += move_speed
		image_xscale = 1
		
	
}

//can only jump when touching the ground
if (keyboard_check(vk_up)){
	if(instance_place(x, y+1, obj_block) and !instance_place(x, y-10, obj_block)){
			vspeed = -15
			audio_play_sound(jump, 2, false)
	}
}

if(instance_place(x, y+1, obj_block)){
gravity = 0
}
else{
gravity = 1	
}

if ((instance_place(x, y+1, obj_blueBlock)) and (instance_place(x, y-1, obj_blueBlock))){
	hp -=0.5
}

if ((instance_place(x, y+1, obj_redBlock)) and (instance_place(x, y-1, obj_redBlock))){
	hp -=0.5
}


//press z for the lizard to change into its attack sprite
if(keyboard_check_pressed(ord("Z")) and canAttack){
	if(sprite_index = spr_blueLizard){
		sprite_index = spr_blueLizardAttack	
		canAttack = false
		
		//duration for how long the attack sprite lasts
		alarm[0] = room_speed / 2
		audio_play_sound(tongue_slap, 2, false);
	}
	if(sprite_index = spr_redLizard){
		sprite_index = spr_redLizardAttack
		canAttack = false
		
		alarm[1] = room_speed / 2
		audio_play_sound(tongue_slap, 2, false);
	}
}

hp -= 0.025


if(hp <= 0){
	instance_destroy()
	global.game_over = true	
}

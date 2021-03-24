
//restart game
if(keyboard_check_pressed(ord("G"))){
	game_restart()	
	score = 0
}


//set hunger meter to a really high value
if(keyboard_check_pressed(ord("F"))){
	obj_playerLizard.hp = 1000000000
}

//move on to next level
if(keyboard_check_pressed(ord("N"))){
	if(room = Room1_2){
		global.win = true
	}
	else{
		room_goto_next()
	}
}


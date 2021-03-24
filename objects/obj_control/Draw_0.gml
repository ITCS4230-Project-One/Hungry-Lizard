h_position =  camera_get_view_x(view_camera[0]) + view_wport[0]/4
v_position = camera_get_view_y(view_camera[0]) + view_hport[0]/4


//create healtbar
if(instance_exists(obj_playerLizard)){
	draw_healthbar(camera_get_view_x(view_camera[0]) +8, camera_get_view_y(view_camera[0])+20, camera_get_view_x(view_camera[0]) + 120, camera_get_view_y(view_camera[0]) + 30, obj_playerLizard.hp, c_black, c_red, c_lime, 0, true, true)
	draw_text(camera_get_view_x(view_camera[0]) +8, camera_get_view_y(view_camera[0])+30, "Score: " + string(score))
}


if(instance_exists(obj_playerLizard)){
	for (var i = 0; i < global.stars; i++){
 draw_sprite(spr_displayStar, 0, camera_get_view_x(view_camera[0]) + (20 * i) + 8, camera_get_view_y(view_camera[0]) + 50)	
	}
}


//create game over screen
if (global.game_over){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_black)
	draw_text(h_position, v_position , "Game Over! Press R to restart.")
	draw_text(h_position, v_position + 20, "Final Score: " + string(score))
	draw_text(h_position, v_position + 40, "You got " + string(global.stars) + " stars")
}

if(global.win){
	instance_destroy(obj_playerLizard)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_black)
	draw_text(h_position, v_position , "CONGRATULATIONS, YOU WIN! Press R to play again.")
	draw_text(h_position, v_position + 20, "Final Score: " + string(score))
	draw_text(h_position, v_position + 40, "You got " + string(global.stars) + "/6 stars")
}

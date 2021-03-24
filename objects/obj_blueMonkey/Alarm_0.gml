

if instance_exists(obj_playerLizard){

	if obj_playerLizard.x < x
	{
		global.projSpeed = -5
		instance_create_layer(x - 50, y, "instances_characters", obj_blueBall)
		sprite_index = spr_blueMonkeyAlert
	}
	else{
		global.projSpeed = 5
		instance_create_layer(x + 50, y, "instances_characters", obj_blueBall)	
		sprite_index = spr_blueMonkeyAlert
	}
}
alarm[1] = 20
alarm[0] = 150


/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_playerLizard){

if !alarm[0] or !alarm[1]
{
	image_index = 0
}

if obj_playerLizard.x < x
{
	image_index = 0
	image_xscale = 1
	global.projSpeed = -5
	if (alarm[0] < 0){
	alarm[0] = room_speed * 5
	}
}if obj_playerLizard.x > x
{
	image_index = 0
	image_xscale = -1
	global.projSpeed = 5
	if (alarm[1] < 0){
	alarm[1] = room_speed * 5
	}
}
	
}
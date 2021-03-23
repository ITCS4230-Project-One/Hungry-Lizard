/// @description Insert description here
// You can write your code in this editor
if (sprite_index = spr_blueLizardAttack	 or sprite_index = spr_redLizardAttack){
	instance_destroy(other)
}else{
	instance_destroy(other)
	hp -= 50
}
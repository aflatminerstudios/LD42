/// @description Insert description here
// You can write your code in this editor



if(keyboard_check_pressed(vk_left)) {
	// Scroll the title over to credits
	viewTarget = "credits"
} else if(keyboard_check_pressed(vk_right)) {
	// Scroll the title over to credits
	viewTarget = "title"
}

scrScrollTitleScreenTo(viewTarget);

/// @description Insert description here
// You can write your code in this editor


var text = "When the game starts, you can move the launch platform using the arrow keys or WASD.\nUse space bar or left mouse button to advance when complete.\n\n"
text += "\nNext, rotate the platform using up/down arrows or W/S.\nAgain, use the space bar or left mouse click to advance\n";
text += "\nOnce your character appears, you will continue to use the space bar or left mouse click as an action button.\nFirst to run, then to jump, then to use your special ability.\n"
text += "\nYou may zoom in/out using the tab key or the right mouse button\n";
text += "\nAdditionally, you may use fine-controlled zoom by pressing the ctrl and alt keys\n";
text += "\nEach character has unique abilities and each planet has slight variations in gravity\n";
text += "\n\nEnjoy! Press any key to go back to the Title Screen."


draw_set_font(fontInstructions);
draw_set_halign(fa_left);
draw_text_ext(100, 20, text, -1, 600);
/// @description Create a character select button
/// @param xx x coordinate
/// @param yy y coordinate
/// @param character which character this button represents
/// @param playButton the ID of the play button in the room

var xx = argument0;
var yy = argument1;
var character = argument2;
var playButton = argument3;

var button = instance_create_depth(xx, yy, 0, objSelectCharacter);
button.whichCharacter = character;
button.playButton = playButton;
button.sprite_index = object_get_sprite(character);
button.image_speed = 0;

return button;
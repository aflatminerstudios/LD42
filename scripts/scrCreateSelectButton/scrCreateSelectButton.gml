/// @description Create a character select button
/// @param xx x coordinate
/// @param yy y coordinate
/// @param character which character this button represents
/// @param whichTwoot the ID of the character
/// @param flySprite  the sprite for the character

var xx = argument0;
var yy = argument1;
var character = argument2;
var whichTwoot = argument3;
var flySprite = argument4;

var button = instance_create_depth(xx, yy, 0, objSelectCharacter);
button.whichCharacter = character;
button.whichTwoot = whichTwoot;
button.sprite_index = flySprite;

return button;
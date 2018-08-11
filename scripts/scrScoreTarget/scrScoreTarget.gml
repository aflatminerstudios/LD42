/// @description Score points based on target
/// @param x The x position hit
/// @param y The y position hit
/// @param target The target being targeted

var xx = argument0;
var yy = argument1;
var target = argument2;

///Will need to check based on the target size, maybe score better for closer hits
return target.points;
/// @description Score points based on target
/// @param x The x position hit
/// @param y The y position hit
/// @param target The target being targeted
/// @param player the player object hitting the target

var xx = argument0;
var yy = argument1;
var target = argument2;
var player = argument3;

var tempPts = target.points;
var tempMult = player.scoreMult;


var dist = point_distance(target.x, target.y, xx, yy);
var steps = dist / target.scoreWidth;

tempPts = tempPts * (1 - (steps / (target.maxSteps + 1)));


/*
switch (player.object_index) {
  case objBasicCadet:
    
    //This formula set it so no fuel used is 2.25, 30 is 2, 60 is 1.75, etc. up to 150
    if (player.fuelUsed < 150) {
      tempMult *= 9/7;
      tempMult += -0.0083 * fuelUsed;
    } else {
      tempMult = 1;
    }
    
    break;
  case objAlternateCadet:

    
  
    break;
}
*/
tempPts *= tempMult;

///Will need to check based on the target size, maybe score better for closer hits
return tempPts;
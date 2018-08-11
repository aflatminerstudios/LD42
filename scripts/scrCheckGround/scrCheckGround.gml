/// @description Checks for collision with the ground and reacts accordingly
/// @param player The player object to check for

var player = argument0;

with (player) {
  if (place_meeting(x, y, objPlanet)) {
    landed = true;
    orbiting = false;
    speed = 0;
    return true;
  }
}

return false;
/// @description Hit the ground, take appropriate reactions
/// @param player The player object that landed
/// @param target The target the player was trying to hit

var player = argument0;
var target = argument1;

var points = 0;
var hit = false;

with (player) {
  if (place_meeting(x, y, target)) {
    hit = true;
    points += scrScoreTarget(x, y, target, player);    
  }
}

if (hit) {
  show_message("You did it! You hit the target and got " + string(points) + " points!");
} else {
  show_message("You hit the ground! You missed! Boo!");
}
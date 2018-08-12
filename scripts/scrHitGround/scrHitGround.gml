/// @description Hit the ground, take appropriate reactions
/// @param player The player object that landed
/// @param target The target the player was trying to hit

var player = argument0;
var target = argument1;

// Add dust particles
show_debug_message("Player is at (" + string(player.x) +", " + string(player.y) + ")");
var hitX = player.x - lengthdir_x(player.sprite_width / 2, player.image_angle);
var hitY = player.y - lengthdir_y(player.sprite_height / 2, player.image_angle);
var dustDirection = point_direction(objPlanet.x, objPlanet.y, hitX, hitY); // This assume only one planet in the room! -- Post-jam TODO
scrCreateDustAtXYAndDirection(hitX, hitY, dustDirection); // Update these to proper values --  Micha TODO


var points = 0;
var hit = false;

if (objGameInfo.gameType == GAMETYPE_TARGET || (objGameInfo.gameType == GAMETYPE_HORSE && objGameInfo.turn == 2)) {
  with (player) {
    if (place_meeting(x, y, target)) {
      hit = true;
      points += scrScoreTarget(x, y, target, player);    
    }
  }

  scrGoToGameOver(player, points, hit);
  
} else if (objGameInfo.turn == 1 && player.timeOrbiting > room_speed * global.minTime) {
  objGameInfo.turn = 2; 
  objGameInfo.pHitX = player.x;
  objGameInfo.pHitY = player.y;
  objGameInfo.pAdjX = player.x - lengthdir_x(player.sprite_width / 2, player.image_angle);
  objGameInfo.pAdjY = player.y - lengthdir_y(player.sprite_height / 2, player.image_angle);
  objGameInfo.pTime = player.timeOrbiting;
  objGameInfo.alarm[0] = room_speed / 2;
} else if (objGameInfo.turn == 1) {
  objHorseTimer.landedEarly = true;
  objGameInfo.alarm[0] = room_speed;
}else {
  scrScoreHorse(player);
}
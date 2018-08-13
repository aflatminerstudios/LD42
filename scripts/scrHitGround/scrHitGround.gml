/// @description Hit the ground, take appropriate reactions
/// @param player The player object that landed
/// @param target The target the player was trying to hit

var player = argument0;
var target = argument1;

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
  var dir = point_direction(player.x, player.y, player.orbitObject.x, player.orbigObject.y);
  objGameInfo.pAdjX = player.x - lengthdir_x(player.sprite_width / 2, dir);
  objGameInfo.pAdjY = player.y - lengthdir_y(player.sprite_height / 2, dir);
  objGameInfo.pTime = player.timeOrbiting;
  objGameInfo.alarm[0] = room_speed / 2;
} else if (objGameInfo.turn == 1) {
  objHorseTimer.landedEarly = true;
  objGameInfo.alarm[0] = room_speed;
}else {
  scrScoreHorse(player);
}
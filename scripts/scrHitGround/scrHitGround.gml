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

  
} else if (objGameInfo.turn == 1) {
  objGameInfo.turn = 2; 
  objGameInfo.pHitX = player.x;
  objGameInfo.pHitY = player.y;
  objGameInfo.pAdjX = player.x - lengthdir_x(player.sprite_width / 2, player.image_angle);
  objGameInfo.pAdjY = player.y - lengthdir_y(player.sprite_height / 2, player.image_angle);
  objGameInfo.pTime = player.timeOrbiting;
  room_restart();
} else {
  scrScoreHorse(player);
}
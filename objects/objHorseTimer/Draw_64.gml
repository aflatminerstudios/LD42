/// @description Insert description here
// You can write your code in this editor

if (objGameInfo.gameType == GAMETYPE_HORSE || objGameInfo.gameType == GAMETYPE_BLINDHORSE) {

  if (landedEarly) {
    draw_sprite(sprLandedEarly, 0, 400, 100);
  } else if (enoughTime) {
    draw_sprite(sprLandNow, 0, 50, 50);
  }
}
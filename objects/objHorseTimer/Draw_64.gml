/// @description Insert description here
// You can write your code in this editor

if (objGameInfo.gameType == GAMETYPE_HORSE || objGameInfo.gameType == GAMETYPE_BLINDHORSE) {

  if (!enoughTime) {
    draw_sprite(sprLandedEarly, 0, 75, 75);
  } else {
    draw_sprite(sprLandNow, 0, 75, 75);
  }
}
/// @description Insert description here
// You can write your code in this editor


if (!chosen) {
  chosen = true;
  image_blend = make_color_rgb(0, 0, 0);
  objGameInfo.gameType = GAMETYPE_BLINDHORSE;
} else {
  chosen = false;
  image_blend = make_color_rgb(255, 255, 255);
  objGameInfo.gameType = GAMETYPE_TARGET;
}
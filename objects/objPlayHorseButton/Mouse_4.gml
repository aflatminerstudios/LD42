/// @description Insert description here
// You can write your code in this editor


if (!chosen && !blind) {
  chosen = true;
  blind = true;
  image_blend = make_color_rgb(0, 0, 0);
  objGameInfo.gameType = GAMETYPE_BLINDHORSE;
} else if (chosen && blind) {
  blind = false;
  image_blend = make_color_rgb(128, 128, 128);
  objGameInfo.gameType = GAMETYPE_HORSE;
} else {
  chosen = false;
  image_blend = make_color_rgb(255, 255, 255);
  objGameInfo.gameType = GAMETYPE_TARGET;
}
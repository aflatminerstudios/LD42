/// @description Insert description here
// You can write your code in this editor


instance_create_layer(room_width / 2, room_height / 2,"Instances", global.planet);

showZoomMessage = false;


if (objGameInfo.gameType == GAMETYPE_BLINDHORSE || objGameInfo.gameType == GAMETYPE_HORSE) {
  instance_create_layer(0, 0, "Instances", objHorseTimer); 
}
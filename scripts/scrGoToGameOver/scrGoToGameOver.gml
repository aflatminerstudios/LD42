/// @description Spawns target on the planet
/// @param player The player being used
/// @param points The score being used
/// @param won Whether the player hit the target or not

var player = argument0;
var points = argument1;
var won = argument2;

objGameInfo.player = player.name;
objGameInfo.pScore = points;
objGameInfo.won = won;

objGameInfo.alarm[1] = room_speed * GAMEOVER_WAITTIME;
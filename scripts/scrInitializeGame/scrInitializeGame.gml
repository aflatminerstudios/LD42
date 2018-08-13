/// scrInitializeGame()
/// Everything in this script will run before the game starts

randomize();

//Setting up global variables
global.character = noone;
global.planet = noone;
global.minTime = 2.5;
global.asteroidBGPercentage = 1.0; // Lower to 0.5, etc. to decrease the number of astroids used in the bg (slowdown)

//Setting up constants
#macro PLANET_TARGET_DEPTH_DIFF 1
#macro PLATFORM_PLAYER_DEPTH_DIFF 1

#macro GAMETYPE_TARGET 1
#macro GAMETYPE_BLINDHORSE 2
#macro GAMETYPE_HORSE 3

#macro GAMEOVER_WAITTIME 1



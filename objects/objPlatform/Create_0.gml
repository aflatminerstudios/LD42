/// @description Insert description here
// You can write your code in this editor

moving = true;
angling = false;

moveSpeed = 5;
angleSpeed = 3;

minAngle = -75;
maxAngle = 75;

leftBound = 480;
bottomBound = 130;


numSprites = 3;

target = noone;



centerx = room_width / 2;
centery = room_height / 2;

rightBound = centerx + 1008;
topBound = 30;
leftBound = centerx;

switch(global.planet) {

  case objPlanetBlue:
  case objPlanetGas:
  case objPlanetDisco:  
    bottomBound = centery - 478;
    x = centerx + 288;
    y = centery - 588;
    break;
    
  case objPlanetMercury:

    bottomBound = centery - 248;
    x = centerx + 288;
    y = centery - 368;  
    break;
    
}

alarm[0] = 1;
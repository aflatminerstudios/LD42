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
rightBound = 2384;
topBound = 30;

numSprites = 3;

target = noone;

switch(global.planet) {

  case objPlanetBlue:
  case objPlanetGas:
  case objPlanetDisco:  
    leftBound = 1376;
    bottomBound = 290;
    x = 1664;
    y = 180;
    break;
    
  case objPlanetMercury:
    leftBound = 1376;
    bottomBound = 520;
    x = 1664;
    y = 400;  
    break;
    
}
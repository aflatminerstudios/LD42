/// @description Insert description here
// You can write your code in this editor

moving = true;
angling = false;

moveSpeed = 5;
angleSpeed = 3;

minAngle = -45;
maxAngle = 45;

leftBound = 480;
bottomBound = 130;


numSprites = 3;

target = noone;
image_speed = 0;


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

moveButtons[0] = instance_create_depth(2304, 1632, depth, objMoveUpButton);
moveButtons[1] = instance_create_depth(2304, 1824, depth, objMoveDownButton);
moveButtons[2] = instance_create_depth(2208, 1728, depth, objMoveLeftButton);
moveButtons[3] = instance_create_depth(2400, 1728, depth, objMoveRightButton);
moveButtons[4] = instance_create_depth(2304, 1728, depth, objLeaveMoveButton);
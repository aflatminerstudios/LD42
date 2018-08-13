/// @description Scores a game of "Horse"
/// @param player The player


var player = argument0;
var xx = player.x;
var yy = player.y;
var time = player.timeOrbiting;

var basePts = 1500;
var tempPts = basePts;
var tempMult = player.scoreMult;
var hit = false;


if (objGameInfo.gameType == GAMETYPE_BLINDHORSE) {
  var dist = point_distance(objGameInfo.pHitX, objGameInfo.pHitY, xx, yy);
  var steps = dist / 20;
  if (steps < 5) {
    tempPts = tempPts * (1 - (steps / 6));
    hit = true;
  }
}

tempPts *= player.scoreMult;

scrGoToGameOver(player, tempPts, hit);

/*
var timeDiff = abs(time - objGameInfo.pTime);

var timeRatio = timeDiff / objGameInfo.pTime;
if (timeRatio < 0.75) {
  var mult = -16.629 * power(timeRatio, 3) + 25.697 * power(timeRatio, 2) - 13.282 * timeRatio + 3.0258;
  
}

*/
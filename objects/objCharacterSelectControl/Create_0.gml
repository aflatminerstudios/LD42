/// @description Spawn everything in room
// You can write your code in this editor

var playButton = instance_create_depth(512, 680, 0, objCharacterSelectPlayButton);

var xcoord = 325;
var yStart = 128;
var yDelta = 100;

buttons[0] = scrCreateSelectButton(xcoord, yStart + yDelta * 0, objBasicCadet, sprTwooterBasic, sprCadet1Fly);
buttons[1] = scrCreateSelectButton(xcoord, yStart + yDelta * 1, objAlternateCadet, sprTwooterBoost, sprBoostFly);
buttons[2] = scrCreateSelectButton(xcoord, yStart + yDelta * 2, objAttractingCadet, sprTwooterAttract, sprAttractFly);
buttons[3] = scrCreateSelectButton(xcoord, yStart + yDelta * 3, objBoomBoomCadet, sprTwooterBoomBoom, sprBoomFly);
buttons[4] = scrCreateSelectButton(xcoord, yStart + yDelta * 4, objGoatCadet, sprTwooterGoat, sprGoatFly);

selectedChar = false;
selectedMode = false;
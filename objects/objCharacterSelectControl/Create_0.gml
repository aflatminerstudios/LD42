/// @description Spawn everything in room
// You can write your code in this editor

var playButton = instance_create_depth(512, 680, 0, objCharacterSelectPlayButton);

buttons[0] = scrCreateSelectButton(512, 250, objBasicCadet, playButton);
buttons[1] = scrCreateSelectButton(512, 325, objAlternateCadet, playButton);
buttons[2] = scrCreateSelectButton(512, 400, objAttractingCadet, playButton);
buttons[3] = scrCreateSelectButton(512, 475, objBoomBoomCadet, playButton);
buttons[4] = scrCreateSelectButton(512, 550, objGoatCadet, playButton);

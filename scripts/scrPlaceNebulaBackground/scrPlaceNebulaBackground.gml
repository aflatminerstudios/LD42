/// scrPlaceNebulaBackground()

var nebula1X = afm_scrDiceNormalizedIRandom(room_width, 1)
var nebula1Y = afm_scrDiceNormalizedIRandom(room_height, 1);
var nebula = instance_create_layer(nebula1X, nebula1Y, "StarfieldMiddleGround", objStarTile);
nebula.sprite_index = sprSpaceNebula1;

var nebula2X = afm_scrDiceNormalizedIRandom(room_width, 1)
var nebula2Y = afm_scrDiceNormalizedIRandom(room_height, 1);
var nebula = instance_create_layer(nebula2X, nebula2Y, "StarfieldMiddleGround", objStarTile);
nebula.sprite_index = sprSpaceNebula2;
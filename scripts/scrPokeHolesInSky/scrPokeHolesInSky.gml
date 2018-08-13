/// scrPokeHolesInSky(numberOfHoles)

var numberOfHoles = argument0;

for(var i = 0; i < numberOfHoles; i++) {
	var starX = afm_scrDiceNormalizedIRandom(room_width, 2)
	var starY = afm_scrDiceNormalizedIRandom(room_height, 2);
	
	var starSprite = choose(sprStarMag5, sprStarMag5, sprStarMag4, sprStarMag3);
	layer_sprite_create("StarfieldAssets", starX, starY, starSprite);
}

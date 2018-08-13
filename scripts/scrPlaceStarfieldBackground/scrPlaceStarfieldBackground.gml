/// scrPlaceStarfieldBackground()

// Sprinkle the sky with stars like tiny diamonds
scrPokeHolesInSky(1000);

// Removed sprStarsLarge05 (dupe of sprStarsLarge04) & sprStarsSmall04 (blank)
var starTileArray = [sprStarsLarge01, sprStarsLarge02, sprStarsLarge03, sprStarsLarge04, sprStarsSmall01, sprStarsSmall02, sprStarsSmall03, sprStarsSmall05, sprSpaceCloud01];
var starTileArrayLength = 9;

for(var i = 0; i < starTileArrayLength; i++) {
	var starX = afm_scrDiceNormalizedIRandom(room_width, 3)
	var starY = afm_scrDiceNormalizedIRandom(room_height, 3);
	var starTile = instance_create_layer(starX, starY, "StarfieldMiddleGround", objStarTile);	
	starTile.sprite_index = starTileArray[i];
}

var cloudBottomLeft = instance_create_layer(0, 0, "StarfieldMiddleGround", objStarTile);
cloudBottomLeft.sprite_index = sprSpaceCloudBottomLeft;
cloudBottomLeft.image_angle = 0;
// Scale it to be full height
var cloudBottomNewScale = 1.0*room_height/sprite_height;
cloudBottomLeft.image_xscale = cloudBottomNewScale;
cloudBottomLeft.image_yscale = cloudBottomNewScale;

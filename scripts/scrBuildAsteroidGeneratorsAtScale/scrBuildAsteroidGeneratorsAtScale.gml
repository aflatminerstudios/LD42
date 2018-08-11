///scrBuildAsteroidGeneratorsAtScale(scale, isRainbow)

var scale = argument0;
var isRainbow = argument1;

var middleBackBelt = instance_create_layer(-25, 55, "StarfieldMiddleDistance", objAsteroidBGGenerator);
var topBelt = instance_create_layer(-20, 40, "StarfieldMiddleDistance", objAsteroidBGGenerator);
var bottomBelt = instance_create_layer(-28, 77, "StarfieldMiddleDistance", objAsteroidBGGenerator);
var middleFrontBelt = instance_create_layer(-25, 55, "StarfieldMiddleDistance", objAsteroidBGGenerator);

middleBackBelt.overallScale = 0.6;
middleBackBelt.asteroidBlendBrightness = 180;
middleBackBelt.depth = layer_get_depth("StarfieldBG")-1;
middleBackBelt.isRainbow = isRainbow;

topBelt.asteroidSpeed *= 0.95;
topBelt.asteroidMinimumCooldown *= 1.2;
topBelt.asteroidMaximumCooldown *= 1.2;
topBelt.overallScale = 0.7;
topBelt.asteroidBlendBrightness = 200;
topBelt.depth = layer_get_depth("StarfieldBG")-2;
topBelt.isRainbow = isRainbow;

bottomBelt.asteroidMinimumCooldown *= 1.2;
bottomBelt.asteroidMaximumCooldown *= 1.2;
bottomBelt.overallScale = 0.65
bottomBelt.asteroidBlendBrightness = 200
bottomBelt.depth = layer_get_depth("StarfieldBG")-3;
bottomBelt.isRainbow = isRainbow;

middleFrontBelt.asteroidSpeed *= 1.05;
middleFrontBelt.asteroidMinimumCooldown *= 0.5;
middleFrontBelt.asteroidMaximumCooldown *= 0.75;
middleFrontBelt.overallScale = 0.8
middleFrontBelt.depth = layer_get_depth("StarfieldBG")-4;
middleFrontBelt.isRainbow = isRainbow;
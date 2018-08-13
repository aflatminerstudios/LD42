///scrBuildAsteroidGeneratorsAtScale(scale, isRainbow)

var instancePercentage = global.asteroidBGPercentage; // 0.0-1.0, should change to macro/global  --  Micha TODO
if(instancePercentage <= 0)
	return;
	
var scale = argument0;
var isRainbow = argument1;

var generatorX = -25;
var generatorY = 450;

var middleBackBelt = instance_create_layer(generatorX, generatorY-5, "StarfieldBG", objAsteroidBGGenerator);
var topBelt = instance_create_layer(generatorX+5, generatorY-25, "StarfieldBG", objAsteroidBGGenerator);
var bottomBelt = instance_create_layer(generatorX-3, generatorY+22, "StarfieldBG", objAsteroidBGGenerator);
var middleFrontBelt = instance_create_layer(generatorX, generatorY, "StarfieldBG", objAsteroidBGGenerator);

middleBackBelt.asteroidMinimumCooldown *= 1.0/instancePercentage;
middleBackBelt.asteroidMaximumCooldown *= 1.0/instancePercentage;
middleBackBelt.overallScale = 0.6*scale;
middleBackBelt.asteroidBlendBrightness = 180;
middleBackBelt.depth = layer_get_depth("StarfieldBG")-1;
middleBackBelt.isRainbow = isRainbow;

topBelt.asteroidSpeed *= 0.95;
topBelt.asteroidMinimumCooldown *= 1.2/instancePercentage;
topBelt.asteroidMaximumCooldown *= 1.2/instancePercentage;
topBelt.overallScale = 0.7*scale;
topBelt.asteroidMaximumXOffset *= 1.5;
topBelt.asteroidMaximumYOffset *= 1.5;
topBelt.asteroidBlendBrightness = 200;
topBelt.depth = layer_get_depth("StarfieldBG")-2;
topBelt.isRainbow = isRainbow;

bottomBelt.asteroidMinimumCooldown *= 1.2/instancePercentage;
bottomBelt.asteroidMaximumCooldown *= 1.2/instancePercentage;
bottomBelt.overallScale = 0.65*scale
bottomBelt.asteroidMaximumXOffset *= 1.5;
bottomBelt.asteroidMaximumYOffset *= 1.5;
bottomBelt.asteroidBlendBrightness = 200
bottomBelt.depth = layer_get_depth("StarfieldBG")-3;
bottomBelt.isRainbow = isRainbow;

middleFrontBelt.asteroidSpeed *= 1.05;
middleFrontBelt.asteroidMinimumCooldown *= 0.5/instancePercentage;
middleFrontBelt.asteroidMaximumCooldown *= 0.75/instancePercentage;
middleFrontBelt.overallScale = 0.8*scale
middleFrontBelt.depth = layer_get_depth("StarfieldBG")-4;
middleFrontBelt.isRainbow = isRainbow;
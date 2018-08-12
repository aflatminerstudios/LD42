/// scrCreateAsteroidAtXYForGenerator(asteroidX, asteroidY, generatorInstance)

var asteroidX = argument0;
var asteroidY = argument1;
var generatorInstance = argument2;

var newAsteroid = instance_create_depth(asteroidX, asteroidY, generatorInstance.depth, objAsteroid);
newAsteroid.speed = generatorInstance.asteroidSpeed;
newAsteroid.direction = generatorInstance.asteroidDirection;
var scale = generatorInstance.overallScale*random_range(generatorInstance.asteroidMinimumScale, generatorInstance.asteroidMaximumScale)
newAsteroid.image_xscale = scale;
newAsteroid.image_yscale = scale;
newAsteroid.image_angle = irandom(360)

if(generatorInstance.isRainbow)
	newAsteroid.image_blend = make_colour_hsv(random(255), 255, generatorInstance.asteroidBlendBrightness);
else 
	newAsteroid.image_blend = make_colour_hsv(0, 0, generatorInstance.asteroidBlendBrightness);

/// @description Insert description here
// You can write your code in this editor

// Offsets use a 2-dice style (each half the range) of estimating a normal distribution
var xOffset = overallScale * (irandom_range(-asteroidMaximumXOffset, asteroidMaximumXOffset)/2 + irandom_range(-asteroidMaximumXOffset, asteroidMaximumXOffset)/2);
var yOffset = overallScale * (irandom_range(-asteroidMaximumYOffset, asteroidMaximumYOffset)/2 + irandom_range(-asteroidMaximumYOffset, asteroidMaximumYOffset)/2);
var newAsteroid = instance_create_depth(x+xOffset, y+yOffset, self.depth, objAsteroid);
newAsteroid.speed = self.asteroidSpeed;
newAsteroid.direction = self.asteroidDirection;
var scale = overallScale*random_range(asteroidMinimumScale, asteroidMaximumScale)
newAsteroid.image_xscale = scale;
newAsteroid.image_yscale = scale;
newAsteroid.image_angle = irandom(360)

if(self.isRainbow)
	newAsteroid.image_blend = make_colour_hsv(random(255), 255, asteroidBlendBrightness);
else 
	newAsteroid.image_blend = make_colour_hsv(0, 0, asteroidBlendBrightness);

// Queue up the next asteroid
alarm[0] = irandom_range(overallScale*asteroidMinimumCooldown, overallScale*asteroidMaximumCooldown);

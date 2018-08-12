/// @description Insert description here
// You can write your code in this editor

// Offsets use a 2-dice style (each half the range) of estimating a normal distribution
var xOffset = self.overallScale * (irandom_range(-self.asteroidMaximumXOffset, self.asteroidMaximumXOffset)/2 + irandom_range(-self.asteroidMaximumXOffset, self.asteroidMaximumXOffset)/2);
var yOffset = self.overallScale * (irandom_range(-self.asteroidMaximumYOffset, self.asteroidMaximumYOffset)/2 + irandom_range(-self.asteroidMaximumYOffset, self.asteroidMaximumYOffset)/2);

scrCreateAsteroidAtXYForGenerator(x+xOffset, y+yOffset, self.id);

/*
var newAsteroid = instance_create_depth(x+xOffset, y+yOffset, self.depth, objAsteroid);
newAsteroid.speed = self.asteroidSpeed;
newAsteroid.direction = self.asteroidDirection;
var scale = self.overallScale*random_range(self.asteroidMinimumScale, self.asteroidMaximumScale)
newAsteroid.image_xscale = scale;
newAsteroid.image_yscale = scale;
newAsteroid.image_angle = irandom(360)

if(self.isRainbow)
	newAsteroid.image_blend = make_colour_hsv(random(255), 255, self.asteroidBlendBrightness);
else 
	newAsteroid.image_blend = make_colour_hsv(0, 0, self.asteroidBlendBrightness);
*/

// Queue up the next asteroid
alarm[0] = irandom_range(self.overallScale*asteroidMinimumCooldown, self.overallScale*asteroidMaximumCooldown);

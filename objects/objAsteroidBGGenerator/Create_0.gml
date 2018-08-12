/// @description Insert description here
// You can write your code in this editor

overallScale = 1.0;
asteroidDirection = 340 // The angle it shoots asteroids out
asteroidSpeed = 0.8;
asteroidMinimumScale = 0.5;
asteroidMaximumScale = 0.7;
asteroidMinimumCooldown = 1.0*room_speed;
asteroidMaximumCooldown = 2.0*room_speed;
asteroidMaximumXOffset = 20;
asteroidMaximumYOffset = 20;
asteroidBlendBrightness = 255;
isRainbow = false;

// Consider filling the screen with asteroids at launch
//   Using speed+direction+cooldowns to determine location --  Micha TODO

// Kick off generating the first asteroid
alarm[0] = random(asteroidMaximumCooldown);


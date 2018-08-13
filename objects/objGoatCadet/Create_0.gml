/// @description Insert description here
/// You can write your code in this editor

event_inherited();

maxSpeed = 20;
numJumps = 0;
maxJumps = 4;
multijumping = false;

jumpMaxTime = 20;
jumpSpeed = 0.07;

multijumpSpeed = 0.7;
multijumpMaxTime = 15;

landing = false;


targetX = 0;
targetY = 0;
landingSpeed = 5;

scoreMult = 1.8;
name = "Goat";

idleSprite = sprGoatIdle;
runSprite = sprGoatRun;
flySprite = sprGoatFly;
landingSprite = sprGoatLanding;
powerSprite = sprBoost;

powerIndex = 0;
pressedSpecial = false;

rotationSpeed = 5;
boostDir = 0;
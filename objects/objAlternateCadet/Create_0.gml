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

//Remove this when we get new sprites
image_blend = make_color_rgb(244, 83, 66)

targetX = 0;
targetY = 0;
landingSpeed = 5;

scoreMult = 1.8;
name = "Alternate";

idleSprite = sprCadet1Idle;
runSprite = sprCadet1Run;
flySprite = sprCadet1Fly;
landingSprite = sprCadet1Landing;
powerSprite = sprBoost;

powerIndex = 0;
pressedSpecial = false;
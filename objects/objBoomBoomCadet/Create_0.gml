/// @description Insert description here
/// You can write your code in this editor

event_inherited();

maxSpeed = 20;
numJumps = 0;
maxJumps = 4;
multijumping = false;

multijumpSpeed = 0.7;
multijumpMaxTime = 15;

landing = false;

targetX = 0;
targetY = 0;
landingSpeed = 5;

scoreMult = 1.4;
name = "BoomBoom";

idleSprite = sprCadet1Idle;
runSprite = sprCadet1Run;
flySprite = sprCadet1Fly;
landingSprite = sprCadet1Landing;
powerSprite = sprBoomBoom;

powerIndex = 0;
pressedSpecial = false;
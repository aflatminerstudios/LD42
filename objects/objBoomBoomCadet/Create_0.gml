/// @description Insert description here
/// You can write your code in this editor

event_inherited();

maxSpeed = 30;
accel = 0.85;

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

idleSprite = sprBoomIdle;
runSprite = sprBoomRun;
flySprite = sprBoomFly;
landingSprite = sprBoomLanding;
powerSprite = sprBoomBoom;

powerIndex = 0;
pressedSpecial = false;
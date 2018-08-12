/// @description Insert description here
// You can write your code in this editor

event_inherited();

//State variables
jumping = false;
running = false;
orbiting = false;
hitPForm = false;
landed = false;
ready = false; //gets set in alarm 0, activated incamera manager

//Objects to interact with
orbitObject = instance_find(objPlanet, 0);
platform = instance_find(objPlatform, 0);
target = noone;

//Start out standing still and falling
speed = 0;
direction = platform.image_angle + 180;

origVspeed = vspeed;

//Acceleration speed
accel = 1;

maxSpeed = 200;

//Jump related vars (non-state vars, at least)
jumpAccel = 0.5;
jumpSpeed = 0.05;
jumpTime = 0;
jumpMaxTime = 15;
maxJumpSpeed = -5;
startSpeed = 0;

//For scoring
scoreMult = 1;

timeOrbiting = 0;
name = "Noone";
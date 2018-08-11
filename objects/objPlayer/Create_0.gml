/// @description Insert description here
// You can write your code in this editor

event_inherited();

//State variables
jumping = false;
running = false;
orbiting = false;
hitPForm = false;

//Objects to interact with
orbitObject = instance_find(objPlanet, 0);
platform = instance_find(objPlatform, 0);

//Start out standing still and falling
speed = 0;
direction = 180;

origVspeed = vspeed;

//Acceleration speed
accel = 1;


//Jump related vars (non-state vars, at least)
jumpAccel = 0.2;
jumpTime = 0;
jumpMaxTime = 30;

/// @description Insert description here
// You can write your code in this editor

//State variables
jumping = false;
running = false;
orbiting = false;
onGround = false;

//What planet are we orbiting?
orbitObject = instance_find(objPlanet, 0);

//Start out standing still and falling
hspeed = 0;
vspeed = 0;
origVspeed = vspeed;

//Acceleration speed
accel = -1;
jumpAccel = -1;
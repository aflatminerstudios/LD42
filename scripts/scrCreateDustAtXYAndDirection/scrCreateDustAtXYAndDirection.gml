/// scrCreateDustAtXYAndDirection(x, y, direction)

var dustX = argument0;
var dustY = argument1;
var dustDirection = argument2;

show_debug_message("Creating dust at (" + string(dustX) +", " + string(dustY) + ") at " + string(dustDirection) + " degrees");

// Create dust particles
var leftDust = instance_create_layer(dustX, dustY, "Instances", objDustSwirl);
leftDust.speed = 5.0;
leftDust.direction = direction + 45

var rightDust = instance_create_layer(dustX, dustY, "Instances", objDustSwirl);
rightDust.speed = 5.0;
rightDust.direction = direction - 45

// Give them velocity and TTL
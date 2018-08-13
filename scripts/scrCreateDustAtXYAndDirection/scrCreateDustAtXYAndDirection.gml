/// scrCreateDustAtXYDirectionDepth(x, y, direction, depth)

var dustX = argument0;
var dustY = argument1;
var dustDirection = argument2;
var dustDepth = argument3;

//show_debug_message("Creating dust at (" + string(dustX) +", " + string(dustY) + ") at " + string(dustDirection) + " degrees");

// Create dust particles
var leftDust1 = instance_create_depth(dustX, dustY, dustDepth, objDustSwirl);
leftDust1.speed = 2.0;
leftDust1.direction = dustDirection + 80
leftDust1.originalSizeMultiplier = 0.25
leftDust1.finalSizeMultiplier = 0.5

var leftDust2 = instance_create_depth(dustX, dustY, dustDepth, objDustSwirl);
leftDust2.speed = 3.0;
leftDust2.direction = dustDirection + 90
leftDust2.originalSizeMultiplier = 0.5
leftDust2.finalSizeMultiplier = 1.0

var rightDust1 = instance_create_depth(dustX, dustY, dustDepth, objDustSwirl);
rightDust1.speed = 2.0;
rightDust1.direction = dustDirection - 80
rightDust1.originalSizeMultiplier = 0.25
rightDust1.finalSizeMultiplier = 0.5

var rightDust2 = instance_create_depth(dustX, dustY, dustDepth, objDustSwirl);
rightDust2.speed = 3.0;
rightDust2.direction = dustDirection - 90
rightDust2.originalSizeMultiplier = 0.5
rightDust2.finalSizeMultiplier = 1.0

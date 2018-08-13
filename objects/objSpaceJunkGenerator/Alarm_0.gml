/// @description Insert description here
// You can write your code in this editor

// Generate point at edge of room
var edge = choose("top", "bottom", "left", "right");
var margin = 50;
var edgeX = 0;
var edgeY = 0;
if(edge == "top") {
	edgeX = irandom(room_width);
	edgeY = 0 - margin;
} else if(edge == "bottom") {
	edgeX = irandom(room_width);
	edgeY = room_height + margin;
} else if(edge == "left") {
	edgeX = 0 - margin;
	edgeY = irandom(room_height);
} else if(edge == "right") {
	edgeX = room_width + margin;
	edgeY = irandom(room_height);
}

// Generate direction to go from edge
var targetX = afm_scrDiceNormalizedIRandom(room_width, 2);
var targetY = afm_scrDiceNormalizedIRandom(room_height, 2);
var targetDirection = point_direction(edgeX, edgeY, targetX, targetY);

var junkType = choose(objSpaceJunkSatellite, objSpaceJunkSonia, objSpaceJunkAsteroid);
// Only one Sonia
if(junkType == objSpaceJunkSonia && instance_number(objSpaceJunkSonia) > 0)
	junkType = choose(objSpaceJunkSatellite, objSpaceJunkAsteroid);
var newJunk = instance_create_layer(edgeX, edgeY, self.layer, junkType);
newJunk.direction = targetDirection;
newJunk.speed *= random_range(0.9, 1.1);

alarm[0] = self.cooldownTime;
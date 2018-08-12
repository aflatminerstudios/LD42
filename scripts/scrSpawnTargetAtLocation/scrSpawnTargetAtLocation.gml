/// @description Spawns target on the planet
/// @param platform The platform object to spawn on
/// @param xx x coordinate to spawn at
/// @param yy y coordinate to spawn at

var platform = argument0;
var xx = argument1;
var yy = argument2;

var planet = instance_find(objPlanet, 0);


var dir = point_direction(planet.x, planet.y, xx, yy);

var t = instance_create_depth(xx, yy, planet.depth - PLANET_TARGET_DEPTH_DIFF, objTarget);
t.image_angle = dir;

platform.target = t;

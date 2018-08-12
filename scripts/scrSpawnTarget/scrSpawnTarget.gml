/// @description Spawns target on the planet
/// @param platform The platform object to spawn on

var platform = argument0;

var planet = instance_find(objPlanet, 0);

var dir = irandom(359);

var bboxWidth = planet.bbox_right + 1 - planet.bbox_left;
var bboxHeight = planet.bbox_bottom + 1 - planet.bbox_top;

var tx = planet.x + lengthdir_x(bboxWidth / 2 , dir);// - sprite_get_width(sprTarget)/2;
var ty = planet.y + lengthdir_y(bboxWidth / 2, dir);// - sprite_get_height(sprTarget)/2;

var t = instance_create_depth(tx, ty, planet.depth - PLANET_TARGET_DEPTH_DIFF, objTarget);
t.image_angle = dir;

platform.target = t;

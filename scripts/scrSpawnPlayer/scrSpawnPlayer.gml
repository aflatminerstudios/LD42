/// @description Spawns player on a platform
/// @param platform The platform object to spawn on

var platform = argument0;

var dir = platform.image_angle;
var px = x + lengthdir_x(platform.sprite_width / 2, dir) - sprite_get_width(sprBasicCadet)/2;
var py = y + lengthdir_y(platform.sprite_height / 2, dir) - sprite_get_height(sprBasicCadet)/2;

var p = instance_create_depth(px, py, platform.depth - PLATFORM_PLAYER_DEPTH_DIFF, objBasicCadet);
p.platform = platform;
if (platform.target != noone) {
  p.target = platform.target;
}
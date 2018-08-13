/// @description Spawns player on a platform
/// @param platform The platform object to spawn on

var platform = argument0;

var dir = platform.image_angle;
var sprite = object_get_sprite(global.character);
//var px = x + lengthdir_x(platform.sprite_width / 2, dir);// - lengthdir_x(sprite_get_width(sprite)/2, dir);
//var py = y + lengthdir_y(platform.sprite_height / 2, dir - 90);// - lengthdir_y(sprite_get_height(sprite)/2, dir - 90);
var px = platform.x + lengthdir_x(sprite_get_width(platform.sprite_index) / 2, dir) - lengthdir_x(sprite_get_width(sprite)/4, dir);
var py = platform.y + lengthdir_y(sprite_get_height(platform.sprite_index) / 2, dir + 90) + lengthdir_y(sprite_get_height(sprite)/4, dir + 90);

show_debug_message(string(dir));
show_debug_message(sprite_get_height(platform.sprite_index));
show_debug_message(string(lengthdir_y(sprite_get_height(platform.sprite_index) / 2, dir - 90)) + " - " + string(lengthdir_y(sprite_get_height(sprite)/2, dir - 90)));


var p = instance_create_depth(px, py, platform.depth - PLATFORM_PLAYER_DEPTH_DIFF, global.character);
p.platform = platform;
if (platform.target != noone) {
  p.target = platform.target;
}

objCameraManager.player = p;
objCameraManager.alarm[0] = room_speed / 1.5;
objCameraManager.ready = false;
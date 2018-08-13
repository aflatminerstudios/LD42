/// @description Spawns player on a platform
/// @param platform The platform object to spawn on

var platform = argument0;

var dir = platform.image_angle;
var sprite = object_get_sprite(global.character);

var spriteWidth = sprite_get_width(sprite);
var spriteHeight = sprite_get_height(sprite);
var pWidth = sprite_get_width(platform.sprite_index);
var pHeight = sprite_get_height(platform.sprite_index);

var px = platform.bbox_right - lengthdir_x(spriteWidth / 2, dir) + lengthdir_x(spriteHeight / 2, dir + 90);
var py = platform.bbox_top + lengthdir_y(spriteHeight / 2, dir + 90) - lengthdir_y(spriteWidth / 2, dir);
if (dir < 0) {
  py = platform.bbox_bottom + lengthdir_y(spriteHeight / 2, dir + 90) + lengthdir_y(spriteWidth / 2, dir); 
}


//show_debug_message(string(lengthdir_x(spriteWidth/2, dir)) + " " + string(lengthdir_y(spriteHeight/2, dir + 90)));
var p = instance_create_depth(px, py, platform.depth - PLATFORM_PLAYER_DEPTH_DIFF, global.character);
p.platform = platform;
if (platform.target != noone) {
  p.target = platform.target;
}

objCameraManager.player = p;
objCameraManager.alarm[0] = room_speed / 1.5;
objCameraManager.ready = false;


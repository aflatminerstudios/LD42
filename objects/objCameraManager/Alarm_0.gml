/// @description Initial zooming
// You can write your code in this editor

var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

var newWidth = lerp(viewWidth, targetWidth, zoomRate);
var newHeight = lerp(viewHeight, targetHeight, zoomRate);

//Update size
camera_set_view_size(view_camera[0], newWidth, newHeight);

var shiftedX = lerp(camera_get_view_x(view_camera[0]), player.x - viewWidth / 2, zoomRate);
var shiftedY = lerp(camera_get_view_y(view_camera[0]), player.y - viewHeight / 2, zoomRate);

//Update position
camera_set_view_pos(view_camera[0], shiftedX, shiftedY);


if (floor(newWidth) != targetWidth || floor(newHeight) != targetHeight) {  
  alarm[0] = 1; 
} else {  
  camera_set_view_size(view_camera[0], targetWidth, targetHeight);
  closeup = true;
  ready = true;
  player.alarm[0] = 1;
  objGameControl.alarm[0] = 1;  
  objGameControl.alarm[1] = 1;  
}
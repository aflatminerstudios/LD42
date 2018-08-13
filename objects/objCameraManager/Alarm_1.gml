/// @description Zooms all the way in/out
// You can write your code in this editor

var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

var newWidth = lerp(viewWidth, targetWidth, zoomRate);
var newHeight = lerp(viewHeight, targetHeight, zoomRate);

//Update size
camera_set_view_size(view_camera[0], newWidth, newHeight);

var shiftedX = camera_get_view_x(view_camera[0]) - (newWidth - viewWidth) * 0.5;
var shiftedY = camera_get_view_y(view_camera[0]) - (newHeight - viewHeight) * 0.5;

//Update position
camera_set_view_pos(view_camera[0], shiftedX, shiftedY);


if (round(newWidth) != targetWidth || round(newHeight) != targetHeight) {  
  alarm[1] = 1; 
} else {
  camera_set_view_size(view_camera[0], targetWidth, targetHeight);  
  ready = true;
  objGameControl.showZoomMessage = false

}


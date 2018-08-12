/// @description Zooms in/out
/// @param camera The camera manager object
/// @param dir Direction (-1 for zoom in, 1 for zoom out)

var camera = argument0;
var dir = argument1;

var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

var newWidth = viewWidth * camera.zoomDelta;
var newHeight = viewHeight * camera.zoomDelta;
if (dir == -1) {
  newWidth = viewWidth / camera.zoomDelta;
  newHeight = viewHeight / camera.zoomDelta;
}
newWidth = clamp(newWidth, camera.fullZoomedWidth, camera.defaultZoomWidth);
newHeight = clamp(newHeight, camera.fullZoomedHeight, camera.defaultZoomHeight);

//Update size
camera_set_view_size(view_camera[0], newWidth, newHeight);

var shiftedX = camera_get_view_x(view_camera[0]) - (newWidth - viewWidth) * 0.5;
var shiftedY = camera_get_view_y(view_camera[0]) - (newHeight - viewHeight) * 0.5;

//Update position
camera_set_view_pos(view_camera[0], shiftedX, shiftedY);

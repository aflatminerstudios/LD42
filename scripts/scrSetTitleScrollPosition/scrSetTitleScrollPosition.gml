/// scrSetTitleScrollPosition(percentFromLeft)

var percentFromLeft = argument0; // viewTarget

var camera = view_get_camera(0);
//var cameraX = camera_get_view_x(camera);
var cameraY = camera_get_view_y(camera);

var cameraFarLeft = 0;
var cameraFarRight = 1319
var xPosition = lerp(cameraFarLeft, cameraFarRight, percentFromLeft);

camera_set_view_pos(camera, xPosition, cameraY);
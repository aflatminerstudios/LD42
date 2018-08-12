/// scrScrollTitleScreenTo(viewTarget)
// valid viewTargets are "credits", "title"

var targetLocation = argument0; // viewTarget


// Smooth out scrolling using a tween interpolation  --  Micha TODO
var minScrollSpeed = 5;
var scrollPercentage = 0.1;


var camera = view_get_camera(0);
var cameraX = camera_get_view_x(camera);
var cameraY = camera_get_view_y(camera);

if(targetLocation == "credits") {
	if(cameraX > 0)
		camera_set_view_pos(camera, cameraX - max(minScrollSpeed, scrollPercentage*(cameraX - 0)), cameraY);
	else
		camera_set_view_pos(camera, 0, cameraY);
} else if(targetLocation == "title") {
	var titleCameraX = 1319;
	if(cameraX < titleCameraX)
		camera_set_view_pos(camera, cameraX + max(minScrollSpeed, scrollPercentage*(titleCameraX - cameraX)), cameraY);
	else
		camera_set_view_pos(camera, titleCameraX, cameraY);
}
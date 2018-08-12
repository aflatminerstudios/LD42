/// @description Insert description here
// You can write your code in this editor

// Get initial settings
camera = view_get_camera(0);
xport = view_get_xport(0);
yport = view_get_yport(0);
wport = view_get_wport(0);
hport = view_get_hport(0);

defaultZoomWidth = camera_get_view_width(view_camera[0]);
defaultZoomHeight = camera_get_view_height(view_camera[0]);

// Set "fully" zoomed settings
fullZoomedWidth = 800;
fullZoomedHeight = 600;


targetWidth = 800;
targetHeight = 600;
ready = true;

zoomRate = 0.1;

closeup = false;
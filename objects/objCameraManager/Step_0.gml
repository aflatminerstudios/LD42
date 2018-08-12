/// @description Insert description here
// You can write your code in this editor

var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);
var widthDiff = abs(viewWidth - targetWidth);
var heightDiff = abs(viewHeight - targetHeight);
if (ready) {
  if (scrIsZoomTogglePressed()) {
  
    if (closeup) {
      targetWidth = defaultZoomWidth;
      targetHeight = defaultZoomHeight;     
    } else {
      targetWidth = fullZoomedWidth;
      targetHeight = fullZoomedHeight;
    }
    ready = false;
    closeup = !closeup;
    alarm[1] = 1;
  }

  //zoom in
  if (scrIsZoomInHeld()) {    
    if (widthDiff > zoomDelta * 2) {
      targetWidth -= zoomDelta;
      targetHeight -= zoomDelta;
    } else {
      targetWidth = viewWidth - zoomDelta;
      targetHeight = viewHeight - zoomDelta;
    }
    scrZoom(self.id, -1);
  }
  //zoom out
  if (scrIsZoomOutHeld()) {    
    if (widthDiff > zoomDelta * 2) {
      targetWidth += zoomDelta;
      targetHeight += zoomDelta;
    } else {
      targetWidth = viewWidth + zoomDelta;
      targetHeight = viewHeight + zoomDelta;
    };
    scrZoom(self.id, 1);
  }

}

if (scrIsFollowTogglePressed()) {
  
  if (followPlayer) {
    camera_set_view_target(view_camera[0], objPlanet);
    camera_set_view_border(view_camera[0], room_width, room_height);
  } else {
    camera_set_view_target(view_camera[0], objPlayer);
    camera_set_view_border(view_camera[0], playerHBorder, playerVBorder);
  }
  followPlayer = !followPlayer;
}
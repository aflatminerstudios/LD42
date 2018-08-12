/// @description Insert description here
// You can write your code in this editor

var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);
var diff1 = abs(viewWidth - fullZoomedWidth)
var diff2 = abs(viewHeight - defaultZoomWidth)


if (ready) {
  if (scrIsZoomTogglePressed()) {
  
    if (closeup) {
      targetWidth = defaultZoomWidth;
      targetHeight = defaultZoomHeight;     
    } else {
      targetWidth = fullZoomedWidth;
      targetHeight = fullZoomedHeight;
    }
  
    closeup = !closeup;
    alarm[1] = 1;
  }

  //zoom in
  if (scrIsZoomInPressed()) {
    
  }
  //zoom out
  if (scrIsZoomOutPressed()) {
    
  }

}
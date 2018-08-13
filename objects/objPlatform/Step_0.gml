/// @description Move and angle platform in setup
// You can write your code in this editor

if (moving) {
  if (scrIsLeftPressed() && (x - sprite_width / 2 > leftBound)) {    
    scrMovePlatformLeft();
  }
  if (scrIsRightPressed() && (x + sprite_width / 2 < rightBound)) {        
     scrMovePlatformRight();
  }
  if (scrIsUpPressed() && (y - sprite_height / 2 > topBound)) {    
    scrMovePlatformUp(); 
  }
  if (scrIsDownPressed() && (y + sprite_height / 2 < bottomBound)) {    
    scrMovePlatformDown();
  }
  
  if (scrIsNextModePressed()) {
    scrLeaveMove();

  }
} else if (angling) {
  if (scrIsDownPressed() && image_angle < maxAngle) {
    scrRotatePlatformDown();
   
  }
  if (scrIsUpPressed() && image_angle > minAngle) {
    scrRotatePlatformUp();   
  }
  
  if (scrIsNextModePressed()) {
    scrLeaveRotate();

  }
}
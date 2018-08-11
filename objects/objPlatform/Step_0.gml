/// @description Move and angle platform in setup
// You can write your code in this editor

if (moving) {
  if (scrIsLeftPressed() && (x - sprite_width / 2 > leftBound)) {
    x -= moveSpeed; 
  }
  if (scrIsRightPressed() && (x + sprite_width / 2 < rightBound)) {
    x += moveSpeed; 
  }
  if (scrIsUpPressed() && (y - sprite_height / 2 > topBound)) {
    y -= moveSpeed; 
  }
  if (scrIsDownPressed() && (y + sprite_height / 2 < bottomBound)) {
    y += moveSpeed; 
  }
}
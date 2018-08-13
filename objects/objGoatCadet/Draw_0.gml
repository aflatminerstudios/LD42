/// @description Insert description here
// You can write your code in this editor
draw_self();

var scaleFactor = 2.5;
if (pressedSpecial && !landed) {  
  draw_sprite_ext(powerSprite, floor(powerIndex / scaleFactor), x, y, 1, 1, image_angle, c_white, 1);
  
  powerIndex++;
  if (powerIndex / scaleFactor >= sprite_get_number(powerSprite)) {
   powerIndex = 0;
   pressedSpecial = false;
  }
}
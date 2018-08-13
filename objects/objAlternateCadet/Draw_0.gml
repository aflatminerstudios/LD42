/// @description Insert description here
// You can write your code in this editor
draw_self();

if (pressedSpecial && !landed) {  
  draw_sprite_ext(powerSprite, powerIndex, x, y, 1, 1, image_angle, c_white, 1);
  powerIndex++;
  if (powerIndex >= sprite_get_number(powerSprite)) {
   powerIndex = 0;
   pressedSpecial = false;
  }
}
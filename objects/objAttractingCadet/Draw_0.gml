/// @description Insert description here
// You can write your code in this editor
draw_self();

if (holdingSpecial && !landed) {
  var index = specialCount - 1;
  if (specialCount > sprite_get_number(powerSprite)) {
     index = sprite_get_number(powerSprite) - 1;
  }
  draw_sprite_ext(powerSprite, index, x, y, 1, 1, image_angle, c_white, 1);
}
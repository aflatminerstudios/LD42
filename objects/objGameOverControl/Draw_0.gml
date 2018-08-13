/// @description Insert description here
// You can write your code in this editor

if (twootSprite != noone) {
  draw_sprite(twootSprite, 0, 135, 398); 
}


draw_set_font(fontGameOverGiant);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_halign(fa_left);
draw_set_font(fontGameOverNormal);


draw_text_ext(160, 160, text, -1, 540);
draw_set_font(fontGameOverLarge);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (won) {
  draw_text(400, 400, "Score: " + string(floor(points)));
}
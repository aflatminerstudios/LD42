/// @description Insert description here
// You can write your code in this editor

draw_set_font(fontGameOverGiant);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(400, 50, "Breaking News");

draw_set_halign(fa_left);
draw_set_font(fontGameOverNormal);
var text = "";
var player = objGameInfo.player;
var won = objGameInfo.won;
var points = objGameInfo.pScore;

if (player == "Basic" && won) {
  text = "Looks like the boring guy did it! He successfully landed and hit his target!";
} else if ( player == "Basic" && !won) {
  text = "We all knew he couldn't do it. Boring guy crashed and burned."; 
} else if (player == "Alternate" && won) {
  text = "The dude wearing the funny colors won. He didn't die. So sad.";
} else if (player == "Alternate" && !won) {
  text = "He crashed! Hooray!";
}

draw_text_ext(200, 200, text, -1, 400);
draw_set_font(fontGameOverLarge);
draw_set_halign(fa_center);
if (won) {
  draw_text(400, 400, "Score: " + string(floor(points)));
}
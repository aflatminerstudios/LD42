/// @description 
// You can write your code in this editor

if (showZoomMessage) {
  draw_sprite(sprZoomMsg, 0, 550, 200);
}
if (showRotateMessage) {
  draw_sprite(sprRotateMessage, rotateIndex, 650, 300);
  rotateCount++;
  if (rotateCount % room_speed / 10 == 0) {
    rotateIndex = (rotateIndex + 1) % sprite_get_number(sprRotateMessage);
  }
} 
if (showMoveMessage) {
  draw_sprite(sprMoveMessage, moveIndex, 125, 400);  
  moveCount++;
  if (moveCount % room_speed / 10 ==0) {
    moveIndex = (moveIndex + 1) % sprite_get_number(sprMoveMessage);
  }
} 
if (showRJMessage) {
  draw_sprite(sprRunJump, 0, 150, 200); 
} 
if (showSpecialMessage) {
  draw_sprite(sprSpecialMessage, 0, 675, 50);
}
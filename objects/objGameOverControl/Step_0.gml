/// @description Insert description here
// You can write your code in this editor

if (ready) {
  if (keyboard_check_pressed(vk_anykey)) {
    with (objGameInfo) {
      instance_destroy(); 
    }
    room_goto(roomTitle); 
  }
}
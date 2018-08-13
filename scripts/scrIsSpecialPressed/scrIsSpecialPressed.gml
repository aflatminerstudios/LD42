var retVal = keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);

if (retVal) {
  objGameControl.alarm[2] = room_speed / 2;
}

return retVal;
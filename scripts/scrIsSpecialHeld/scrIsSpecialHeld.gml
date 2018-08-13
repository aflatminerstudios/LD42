var retVal = keyboard_check(ord("E")) || keyboard_check(vk_space) || mouse_check_button(mb_left);
if (retVal) {
  objGameControl.alarm[2] = room_speed / 2;
}

return retVal;
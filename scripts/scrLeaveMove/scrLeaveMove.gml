with (objPlatform) {
  moving = false;
  angling = true;
  image_speed = 1;
  for (var i = 0; i < array_length_1d(moveButtons); i++) {
    with (moveButtons[i]) {
      instance_destroy(); 
    }
  }
  rotButtons[0] = instance_create_depth(2304, 1632, depth, objRotateUpButton);
  rotButtons[1] = instance_create_depth(2304, 1824, depth, objRotateDownButton);
  rotButtons[2] = instance_create_depth(2304, 1728, depth, objLeaveRotateButton);
}

objGameControl.showMoveMessage = false;
objGameControl.showRotateMessage = true;
objGameControl.alarm[4] = room_speed / 2;
with (objPlatform) {
  if (image_angle < maxAngle) {
    image_angle += angleSpeed; 
  }
}
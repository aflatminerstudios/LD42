/// @description Insert description here
/// You can write your code in this editor

event_inherited();

if (orbiting) {
  if (scrIsSpecialPressed()) {
    landing = true;
    landingSpeed = speed;
    targetX = x;
    targetY = y;
    speed = 0;
    pressedSpecial = true;
  }

/*  if (landing) {
    speed = 3;
    direction = point_direction(x, y, targetX, targetY);
  }
  */
  /*
  if (jumping) {
    if (jumpTime < jumpMaxTime) {
      jumpTime += 1;
      speed += accel;
      motion_add(135, jumpSpeed * startSpeed);
    } else {
      orbiting = true;
      jumping = false;
    }
  }   
  */
  
  
  image_angle = point_direction(x, y, orbitObject.x, orbitObject.y) + 90;
}
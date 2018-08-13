/// @description Landing/special specific to this cadet
// You can write your code in this editor

event_inherited();

if (orbiting) {
  
  if (scrIsSpecialPressed() && !multijumping) {
    multijumping = true;
    pressedSpecial = true;
    numJumps++;
    jumpTime = 0;
    boostDir = image_angle - 180;
    show_debug_message(boostDir);
  }
  
  if (multijumping) {
    if (jumpTime < multijumpMaxTime) {
      jumpTime += 1;
     
      
      motion_add(boostDir, multijumpSpeed);
    } else {
      multijumping = false;
    }
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
  
  
  image_angle += rotationSpeed;
  if (image_angle > 360) {
    image_angle -= 360; 
  }
}
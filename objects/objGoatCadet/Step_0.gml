/// @description Landing/special specific to this cadet
// You can write your code in this editor

event_inherited();

if (orbiting) {

  if (scrIsSpecialPressed() && !multijumping) {
    multijumping = true;
    pressedSpecial = true;
    numJumps++;
    jumpTime = 0;
  }
  
  if (multijumping) {
    if (jumpTime < multijumpMaxTime) {
      jumpTime += 1;
     
      var dir = point_direction(orbitObject.x, orbitObject.y, x, y);
      motion_add(dir, multijumpSpeed);
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
}
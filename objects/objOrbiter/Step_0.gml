/// @description Movement Code
// You can write your code in this editor

if (orbiting) {
  //If orbiting, make orbit adjustments
  scrOrbitAdjustment(self.id, orbitObject);
}
 
  //If not jumping, stop when you hit something below yourself
  if (!jumping && vspeed != 0 && !place_empty(x, y + vspeed)) {
    y = y + vspeed;
    while (!place_empty(x, y)) {
      y -= 1;
    }
    
    vspeed = 0;
    onGround = true;
  } 
  
  //If not orbiting, accept input
  if (keyboard_check_pressed(vk_anykey) && running == false) {
    running = true;
  } else if(keyboard_check_pressed(vk_anykey) && running == true) {
    jumping = true; 
    orbiting = true;
  } else if (running == true) {
    hspeed += accel;
    
   //If has hit ground and no ground underneath
    if (onGround && !place_empty(x, y + 1)) {
       orbiting = true;     
    }
  }
  
  
  
  //If jumping, adjust based on jumping speed
  if (jumping = true) {
   running = false;
   vspeed += jumpAccel; 
  }
  
  

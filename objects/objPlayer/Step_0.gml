/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (jumping) {
  if (jumpTime < jumpMaxTime) {
    jumpTime += 1;
    vspeed -= jumpAccel;
  } else {
    orbiting = true;
    jumping = false;
  }
} 
  

if (!orbiting) {
  
  //If not orbiting, accept input
  if (keyboard_check_pressed(vk_anykey) && !running) {
    running = true;
  } else if (keyboard_check_pressed(vk_anykey) && running) {
    jumping = true;
    running = false;
  } 
  if (running) {
    speed += accel

  }
  

      if ((x + sprite_width / 2) < (platform.x - platform.sprite_width / 2)) {
      orbiting = true;
    }

    
 /*
  //If not jumping, stop when you hit something below yourself
  if (!jumping && vspeed != 0 && !place_empty(x + hspeed, y + vspeed)) {
    platform = instance_place(x + hspeed, y + vspeed, objPlatform);
    
    yy = y + vspeed;
    while (!place_empty(x, yy)) {
      yy -= 1;
    }
    y = yy;
    
    vspeed = 0;
    hspeed = 0;
    direction = platform.dir;
    show_debug_message("Dir = " + string(direction));
    hitPForm = true;
    
  } 
  
  //If not orbiting, accept input
  if (keyboard_check_pressed(vk_anykey) && running == false && jumping == false) {
    running = true;
  } else if(keyboard_check_pressed(vk_anykey) && running == true) {
    jumping = true;    
    orbiting = true;
  } else if (running == true) {
    speed += accel;
    
    
    if (hitPForm && ((x + sprite_width / 2) < (platform.x - platform.sprite_width / 2))) {
      orbiting = true;
    }

  }
  */
  
}

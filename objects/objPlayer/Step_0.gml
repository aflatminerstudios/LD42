/// @description Startup code and other basic checks
// You can write your code in this editor

if (ready) {
  event_inherited();

  if (orbiting || jumping) {
  
    if (sprite_index != flySprite) {
      sprite_index = flySprite;
      image_index = 1;
    }
  
    if (orbiting) {
      with (objPlatform) {
        instance_destroy(); 
      }
    }
    timeOrbiting++;
    if (timeOrbiting > room_speed * global.minTime) {
      objHorseTimer.enoughTime = true;
    }
  }

  if (!landed && scrCheckGround(self.id)) {
    sprite_index = landingSprite;
    
  }

  if (!orbiting && !landed) {

    //If not orbiting, accept input
    if (scrIsRunPressed() && !running) {
      running = true;
    } else if (scrIsJumpPressed() && running) {
      startSpeed = speed;
      jumping = true;
      running = false;
    } 
    if (running) {
      
      if (sprite_index != runSprite) {
        sprite_index = runSprite; 
        image_index = 0;
      }
      
      speed += accel;
      if ((x + sprite_width / 2) < (platform.x - platform.sprite_width / 2)) {
        running = false;
        if (!jumping) {
          orbiting = true;
        }
      }
    }
  
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

  if (speed > maxSpeed) {
    speed = maxSpeed; 
  }
} else {
   //show_debug_message(current_time);
}
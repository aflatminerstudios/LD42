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

		// Add dust particles at the landing point
		// This logic comes from the "hit target" calculations, needs slight fixes --  Post-jam TODO
		var hitX = self.x - lengthdir_x(self.sprite_width / 2, self.image_angle);
		var hitY = self.y - lengthdir_y(self.sprite_height / 2, self.image_angle);
		var dustDirection = point_direction(objPlanet.x, objPlanet.y, hitX, hitY); // This assumes only one planet in the room! -- Post-jam TODO
		
		// This logic is copied from the place target script, needs consolidation --  Post-jam TODO
		var planet = instance_find(objPlanet, 0);
		var bboxWidth = planet.bbox_right + 1 - planet.bbox_left;
		var bboxHeight = planet.bbox_bottom + 1 - planet.bbox_top;
		var tx = planet.x + lengthdir_x(bboxWidth / 2, dustDirection);// - sprite_get_width(sprTarget)/2;
		var ty = planet.y + lengthdir_y(bboxWidth / 2, dustDirection);// - sprite_get_height(sprTarget)/2;
		
		scrCreateDustAtXYAndDirection(tx, ty, dustDirection, self.depth-1);

		// Update sprite
		sprite_index = landingSprite;
		orbiting = false;
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

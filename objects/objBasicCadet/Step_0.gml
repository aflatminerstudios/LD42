/// @description Landing/special specific to this cadet
// You can write your code in this editor

event_inherited();

if (orbiting) {
  
  if (scrIsLandHeld()) {
    var dir = point_direction(x, y, orbitObject.x, orbitObject.y);  
    motion_add(dir, 3);
    fuelUsed++;
  }
  if (scrIsSpecialHeld()) {
    var dir = point_direction(orbitObject.x, orbitObject.y, x, y);
    motion_add(dir, 3);
    fuelUsed++;
    holdingSpecial = true;
    specialCount++;
  } else {    
    specialCount = 0;
    holdingSpecial = false; 
  }
  
  image_angle = point_direction(x, y, orbitObject.x, orbitObject.y) + 90;
}

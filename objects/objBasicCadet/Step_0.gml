/// @description Landing specific to this cadet
// You can write your code in this editor

event_inherited();

if (orbiting) {
  if (scrIsLandPressed()) {
    var dir = point_direction(x, y, orbitObject.x, orbitObject.y);
    motion_add(dir, 3);
  }
}
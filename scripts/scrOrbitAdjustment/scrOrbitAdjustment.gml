/// @description
/// @param orbiter orbiting object
/// @param planet  object to orbit

var orbiter = argument0;
var orbitObject = argument1;

var xdist = orbitObject.x - orbiter.x;
var ydist = orbitObject.y - orbiter.y;  
var bottom = power(dot_product(xdist, ydist, xdist, ydist),1.5);
//var dist = point_distance(orbiter.x, orbiter.y, orbitObject.x, orbitObject.y);
//var bottom = dist * dist;
 
var gravPower = orbitObject.mass / bottom;
  
orbiter.hspeed += xdist * gravPower;
orbiter.vspeed += ydist * gravPower;
 

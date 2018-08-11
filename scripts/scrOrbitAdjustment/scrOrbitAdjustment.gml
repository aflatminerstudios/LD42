/// @description
/// @param orbiter orbiting object
/// @param planet  object to orbit

var orbiter = argument0;
var orbitObject = argument1;
/*
var dir = point_direction(orbitObject.x, orbitObject.y, orbiter.x, orbiter.y);
var edgeX = orbitObject.x + orbitObject.sprite_width/2 * cos(dir); 
var edgeY = orbitObject.y + orbitObject.sprite_height/2 * sin(dir);
*/
/*
var xdist = orbitObject.x - orbiter.x;
var ydist = orbitObject.y - orbiter.y;  
var bottom = power(dot_product(xdist, ydist, xdist, ydist),1.5);
//var dist = point_distance(orbitObject.x, orbitObject.y, orbiter.x, orbiter.y);
//var bottom = dist * dist;
 
var gravPower = orbitObject.mass / bottom;
  
orbiter.hspeed += xdist * gravPower;
orbiter.vspeed += ydist * gravPower;
 
*/

//Distance at which gravity should be of a strength of 1
var onePoint = orbitObject.onePoint;
//Maximum amount gravity can pull
var maxPull = orbitObject.maxPull;

//makes sure pull never goes above max
var dist = max(point_distance(orbiter.x, orbiter.y, orbitObject.x, orbitObject.y) / onePoint, 1 / sqrt(maxPull));
var dir = point_direction(orbiter.x, orbiter.y, orbitObject.x, orbitObject.y);
var strength = 1 / sqrt(dist) * orbitObject.gravityStrength;

with (orbiter) {
  motion_add(dir, strength);
}

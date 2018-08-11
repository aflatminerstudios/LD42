/// @description adjust orbiter's movement based on orbitObject
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

//set a minimum strength
if (strength < 0.1)
  strength = 0.1;
  
with (orbiter) {
  motion_add(dir, strength);
}

/*
var dist = point_distance(orbiter.x, orbiter.y, orbitObject.x, orbitObject.y);
var force = 100000 / (dist * dist);

var distx = (orbitObject.x - orbiter.x) / dist;
var disty = (orbitObject.y - orbiter.y) / dist;

hspeed += distx * force;
vspeed += disty * force;
*/

//From yellowafterlife
/*
var cx, cy, crad, clen, cdir, cnext, nx, ny;
// retrieve variables for later use:
cx = orbitObject.x;
cy = orbitObject.y;
crad = point_distance(cx, cy, orbiter.x, orbiter.y);
// find "length" of circle:
clen = crad * pi * 2;
// find current angle on circle:
cdir = point_direction(cx, cy, orbiter.x, orbiter.y);
// find next angle on circle:
cnext = cdir + speed * 360 / clen;
// find coordinates of next point:
nx = cx + lengthdir_x(crad, cnext);
ny = cy + lengthdir_y(crad, cnext);
// set speed vector to reach that point in next step:
hspeed = nx - orbiter.x;
vspeed = ny - orbiter.y;

*/
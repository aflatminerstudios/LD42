/// @description Insert description here
// You can write your code in this editor


if(self.extendOnStart) {
	self.extendOnStart = false;	
	show_debug_message("Extending astroids");
	// Assume for now we are going left to right -- fix this post-jam -- Post-jam TODO
	var nextAsteroidOffsetX = x;
	var nextAsteroidOffsetY = y;
	var xSpeed = lengthdir_x(self.asteroidSpeed, self.asteroidDirection);
	var ySpeed = lengthdir_y(self.asteroidSpeed, self.asteroidDirection);
	while(nextAsteroidOffsetX <= room_width+20) {
		// new distance is current + cooldown*(speed along direction) + offsets
		var cooldownTime = irandom_range(self.overallScale*asteroidMinimumCooldown, self.overallScale*asteroidMaximumCooldown);
		var xOffset = self.overallScale * (irandom_range(-self.asteroidMaximumXOffset, self.asteroidMaximumXOffset)/2 + irandom_range(-self.asteroidMaximumXOffset, self.asteroidMaximumXOffset)/2);
		var yOffset = self.overallScale * (irandom_range(-self.asteroidMaximumYOffset, self.asteroidMaximumYOffset)/2 + irandom_range(-self.asteroidMaximumYOffset, self.asteroidMaximumYOffset)/2);

		nextAsteroidOffsetX = nextAsteroidOffsetX + cooldownTime*xSpeed;
		nextAsteroidOffsetY = nextAsteroidOffsetY + cooldownTime*ySpeed;
		
		scrCreateAsteroidAtXYForGenerator(nextAsteroidOffsetX + xOffset, nextAsteroidOffsetY + yOffset, self.id)
	}
}
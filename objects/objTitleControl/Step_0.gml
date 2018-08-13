/// @description Insert description here
// You can write your code in this editor

/*
// Remove me --  Micha TODO
if(keyboard_check_pressed(vk_left)) {
	// Scroll the title over to credits
	self.viewTarget = "credits"
} else if(keyboard_check_pressed(vk_right)) {
	// Scroll the title over to credits
	self.viewTarget = "title"
}
*/

if(self.viewTarget != self.oldViewTarget) {
	self.oldViewTarget = self.viewTarget;
	self.isScrolling = true;
	self.scrollTime = self.durationOfScroll;
}

if(self.isScrolling) {
	// Move the camera
	if(self.viewTarget == "credits") {
		var percentFromLeft = afm_scrCurveCubicInOut(0, 1, self.scrollTime/self.durationOfScroll);
		scrSetTitleScrollPosition(percentFromLeft);
	} else if(self.viewTarget == "title") {
		var percentFromLeft = afm_scrCurveCubicInOut(1, 0, self.scrollTime/self.durationOfScroll);
		scrSetTitleScrollPosition(percentFromLeft);
	}
	
	// Adjust the parallax
	
	
	// Update the scroll time
	if(self.scrollTime <= 0)
		self.isScrolling = false;
	else
		self.scrollTime--;
		
}

/// @description Insert description here
// You can write your code in this editor
// Check if we are enough off the screen, then destroy self

var margin = 100;
if(self.x > room_width + margin ||
	 self.x < 0 - margin ||
	 self.y > room_width + margin ||
	 self.y < 0 - margin) {
	instance_destroy();		 
}
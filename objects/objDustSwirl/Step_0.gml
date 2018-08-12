/// @description Insert description here
// You can write your code in this editor

event_inherited();

var timeRemaining = max(0, timeToLive - alarm[11]); // clamp at 0

image_angle += self.swirlAngularSpeed;
var newScale = lerp(1.0, self.swirlFinalSizeMultiplier, timeRemaining);

image_xscale = newScale;
image_yscale = newScale;
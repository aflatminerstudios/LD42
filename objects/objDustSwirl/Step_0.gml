/// @description Insert description here
// You can write your code in this editor

event_inherited();

var timeRemaining = max(0, timeToLive - alarm[11]); // clamp at 0

image_angle += self.swirlAngularSpeed;
var newScale = lerp(self.originalSizeMultiplier, self.finalSizeMultiplier, timeRemaining/timeToLive);
image_xscale = newScale;
image_yscale = newScale;

var newAlpha = lerp(originalAlpha, finalAlpha, timeRemaining/timeToLive);
image_alpha = newAlpha;
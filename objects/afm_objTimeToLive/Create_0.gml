/// @description Insert description here
// You can write your code in this editor

timeToLive = 1.0*room_speed;
// "needsSetup" Indicates that it needs the alarm to be set up on the first Step frame
// This may cause it to be one frame late. If so, set alarm[11] directly and needsSetup = false
needsSetup = true; 

// uses alarm[11] for self-destruct
alarm[11] = timeToLive;
/// @description Insert description here
// You can write your code in this editor

/// Call parent functionality + specific overrides
event_inherited();

// Set a radio button specific sprite
pressedSprite = afm_sprRadioButtonDown;

// Turn off the automatic press animation
useAutoPressAnimation = false;


/// Additional public variables (buttonGroup)

// If this radio button is pressed, all other radio buttons with the same buttonGroup
//   will be set to "isPressed = false" without running their unpressedScript
// All buttons start in the same default group named "default"
buttonGroup = "default";
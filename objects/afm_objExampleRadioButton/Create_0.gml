/// @description Example usage

/// Example usage 
event_inherited(); // Make sure to inherit from afm_objRadioButton!

// Only one button within a button group will be on at a time
buttonGroup = "example_group";

// Set the pressed (down) sprite, otherwise it'll use the object's sprite by default
// Set this if you have both an up and a down sprite
pressedSprite = afm_sprRadioButtonDown;

// The following is unneeded, as it uses the object's sprite by default
//unpressedSprite = afm_sprRadioButtonUp; 

// Turn off the auto-offset to simulated a button moving in
// Turn it off if you have the "press" movement built into the down sprite
useAutoPressAnimation = false;

// This will run when the button is pressed
// Radio buttons typically don't need to call scripts on press
//pressedScript = scrNullScript; // Your button click script goes here


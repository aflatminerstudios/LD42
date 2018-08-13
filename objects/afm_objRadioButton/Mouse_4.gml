/// @description Insert description here
// You can write your code in this editor

/// Unpress others, start pressed state, and run pressedScript

if(!isPressed) {
  // Unpress other radio buttons in the same buttonGroup
  // This *does not* run their unpressedScript at this time (TODO)
  var thisButtonGroup = buttonGroup;
  with(afm_objRadioButton) {
    if(buttonGroup == thisButtonGroup)
      isPressed = false;
  }
}

// Run the rest of the parent action (press button, run pressedScript)
event_inherited();
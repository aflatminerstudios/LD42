/// @description Insert description here
// You can write your code in this editor

/// If mouse is already down when moving over the sprite, press it

if(!isPressed && mouse_check_button(mb_any)) {
  // Unpress other radio buttons in the same buttonGroup
  // This *does not* run their unpressedScript at this time (TODO)
  var thisButtonGroup = buttonGroup;
  with(afm_objRadioButton) {
    if(buttonGroup == thisButtonGroup)
      isPressed = false;
  }
}

// Run the rest of the parent action (press button, run pressedScript, mouseover)
event_inherited();
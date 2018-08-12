/// @description Select a character
/// @param whichButton the character select button that was pushed

with (objCharacterSelectControl) {
  
  var whichButton = argument0;
  for (var i = 0; i < array_length_1d(buttons); ++i) {
    if (buttons[i] != whichButton) {
      with (buttons[i]) {
        playButton.selected = false;
        image_blend = make_color_rgb(255, 255, 255);
      }
    } else {
      with (buttons[i]) {
        playButton.selected = true;
        playButton.selectedChar = whichCharacter;    
        image_blend = make_color_rgb(0, 0, 0);
      }
    }    
  } 
}

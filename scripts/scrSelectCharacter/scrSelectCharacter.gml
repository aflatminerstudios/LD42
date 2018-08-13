/// @description Select a character
/// @param whichButton the character select button that was pushed

with (objCharacterSelectControl) {
  selectedChar = true;
  var whichButton = argument0;
  for (var i = 0; i < array_length_1d(buttons); ++i) {
    
    if (self.buttons[i] != whichButton) {      
      with (self.buttons[i]) {      
        self.selected = false;
      }
    } else {
      with (self.buttons[i]) {        
        self.selected = true;
        
        global.character = whichButton.whichCharacter;    
        
      }
    }    
  } 
  if (objCharacterSelectControl.selectedMode) {
    scrStartMainGame();
  }
}

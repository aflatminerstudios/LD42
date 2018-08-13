with (objPlatform) {
  angling = false;
  for (var i = 0; i < array_length_1d(rotButtons); i++) {
    with (rotButtons[i]) {
      instance_destroy(); 
    }
  }
  scrSpawnPlayer(self.id);
}

objGameControl.showRotateMessage = false;
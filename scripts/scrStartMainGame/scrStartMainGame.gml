/// scrStartMainGame()

// Choose what planet will be used
global.planet = choose(objPlanetBlue, objPlanetGas, objPlanetMercury, objPlanetDisco);

// Go to the next room from the Title screen
room_goto(roomMain);
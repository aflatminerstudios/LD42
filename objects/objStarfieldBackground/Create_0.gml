/// @description Insert description here
// You can write your code in this editor

starfieldStyle = choose("asteroid belt");//"nebula", "clouds");

if(starfieldStyle == "nebula") {
// run script to place nebula in bg	--  Micha TODO
} else if(starfieldStyle == "clouds") {
// run script to place clouds in bg	-- Micha TODO
} else if(starfieldStyle == "asteroid belt") {
	scrBuildAsteroidGeneratorsAtScale(1.0, false);
}


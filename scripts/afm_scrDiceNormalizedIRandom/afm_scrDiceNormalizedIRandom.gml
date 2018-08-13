///afm_scrDiceNormalizedIRandom(maxValue, numberOFDice)

var maxValue = argument0;
var numberOfDice = argument1;

if(numberOfDice < 1)
	return 0;

var sum = 0;
for(var i = 0; i < numberOfDice; i++)
	sum += irandom(maxValue/numberOfDice);
	
return sum;
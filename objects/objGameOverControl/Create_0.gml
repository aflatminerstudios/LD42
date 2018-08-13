/// @description Insert description here
// You can write your code in this editor

alarm[0] = room_speed / 2;
ready = false;

won = objGameInfo.won;
player = objGameInfo.player;
points = objGameInfo.pScore;

twootSprite = noone;
if (won) {
   twootSprite = choose(sprGoodTwoot1, sprGoodTwoot2, sprGoodTwoot3, sprGoodTwoot4);
} else {
   twootSprite = choose(sprBadTwoot1, sprBadTwoot2, sprBadTwoot3, sprBadTwoot4);  
}

if (player == "Basic" && won) {
  text = "Boring billionaire successfully hit his goal in the space jump.\nAgain.\nWe get it.";
} else if ( player == "Basic" && !won) {
  text = "Somehow, despite all of the time and money he put into preparing for this, a boring billionaire missed his space jump goal.\nMakes you feel better about yourself, doesn't it?"; 
} else if (player == "Alternate" && won) {
  text = "Someone going by the name of Lt. Bubblehead attempted a space jump today.\nHe or she hit the target without issue.\nWe are still trying to determine his or her true identity.";
} else if (player == "Alternate" && !won) {
  text = "As we watched today, someone took a run off a platform and jumped into orbit around the planet. We think he or she was aiming for a specific target, but they missed.\nWe think it was a famous bounty hunter, but have not confirmed it at this time.";
} else if (player == "Attract" && won) {
  text = "Bootsie McGee completed an amazing feat today. He launched off of a platform and landed on his designated target without issue.\nHe has announced that in celebration he is holding a party and, in his own words, \"It's gonna be LIT!\"";
} else if (player == "Attract" && !won) {
  text = "Bootsie McGee jumped from a space platform today, attempting to reach a target. He crashed in the wrong position, unfortunately.\nTo lift his spirits, he is going to hold a party this evening and, in his own words, \"It's gonna be LIT!\"";
} else if (player == "BoomBoom" && won) {
  text = "Boom Boom, the loveable bomb technician, managed to take a running leap from space and hit his designated target.\nWe are all happy for the burly bomber.";
} else if (player == "BoomBoom" && !won) {
  text = "Today, Boom Boom attempted to hit a target from space. Unfortunately, despite landing with a resounding thud, he landed in the wrong place.";
} else if (player == "Goat" && won) {
  text = "Everyone used to be impressed when a human would make a running leap from space and manage to hit a designated target.\nYou should no longer be as impressed. Today, a goat accomplished the feat.\nYes, we said goat.";
} else if (player == "Goat" && !won) {
  text = "Today, a goat attempted to make a jump from space and hit a target. He missed, of course.\nWhen asked why he would attempt such a dangerous feat, the goat replied \"BAAAA!\"";
}
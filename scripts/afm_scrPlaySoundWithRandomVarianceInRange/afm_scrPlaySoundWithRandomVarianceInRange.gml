/// afm_scrPlaySoundWithRandomVarianceInRange(soundIndex, minVariance, maxVariance)
/// Plays a sound, modified somewhere +/- the specified percent (1.0 = 100%)
///
/// For reference, up a major third is 1.2599
/// No change is 1.0

var soundIndex = argument0;
var minVariance = argument1;
var maxVariance = argument2;

afm_scrPlaySoundWithVariance(soundIndex, random_range(minVariance, maxVariance));

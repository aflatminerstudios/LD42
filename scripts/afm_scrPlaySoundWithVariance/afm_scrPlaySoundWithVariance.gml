/// afm_scrPlaySoundWithVariance(soundIndex, variance)
/// Plays a sound, pitched up or down by the variance factor, where 1.0 = the original sound
///
/// For reference: 
/// Up a major third (4 halfsteps) = 1.2599
/// Up a fifth (7 halfsteps) = 1.4983
/// Up an octave (12 halfsteps) = 2.0
/// Down a fourth (-5 halfsteps) = 0.7492
/// Down a sixth (-8 halfsteps) = 0.62995
/// Down an octave (-12 halfsteps) = 0.5

var soundIndex = argument0;
var variance = argument1;

if(audio_exists(soundIndex)) {
  var playedSound = audio_play_sound(soundIndex, 0, false);
  audio_sound_pitch(playedSound, variance);
}
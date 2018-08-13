/// @description Insert description here
// You can write your code in this editor

music = sndMusic;

if (!audio_is_playing(music)) {
  audio_play_sound(music, 100, true);
}
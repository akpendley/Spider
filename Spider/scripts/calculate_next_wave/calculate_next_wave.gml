/// @func calculate_next_wave(wave)
/// @desc returns number of germs to spawn this wave
/// @param wave number of previous waves completed + 1

var wave = argument0;
return round(power(1.63, wave) + 12);
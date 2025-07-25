/// @desc 

if(sprite_index == cheerAnimation)
{
	whichSound = irandom_range(1, 6);
	if(whichSound == 1)
	{
		audio_play_sound(sndAlienCheer1, 10, false);
	}
	if(whichSound == 2)
	{
		audio_play_sound(sndAlienCheer2, 10, false);
	}
	if(whichSound == 3)
	{
		audio_play_sound(sndAlienCheer3, 10, false);
	}
	if(whichSound == 4)
	{
		audio_play_sound(sndAlienCheer4, 10, false);
	}
}

/// @description Randomize Alien Option

idleList = [sprAlienBlueIdle, sprAlienGreenIdle, sprAlienPinkIdle, sprAlienPurpleIdle, 
			sprAlienRedIdle, sprAlienWhiteIdle, sprAlienYellowIdle];
cheerList = [sprAlienBlueCheer, sprAlienGreenCheer, sprAlienPinkCheer, sprAlienPurpleCheer,
			sprAlienRedCheer, sprAlienWhiteCheer, sprAlienYellowCheer];

alienNumber = irandom(6);
idleAnimation = idleList[alienNumber];
cheerAnimation = cheerList[alienNumber];

sprite_index = idleAnimation;

depth = -y;

image_speed = irandom_range(1, 100) / 100;//1;

whichSound = 0;
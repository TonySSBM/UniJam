/// @description Randomize Alien Option

idleList = [sprAlienBlueIdle, sprAlienGreenIdle, sprAlienPinkIdle, sprAlienPurpleIdle, 
			sprAlienRedIdle, sprAlienWhiteIdle, sprAlienYellowIdle];
cheerList = [sprAlienBlueCheer, sprAlienGreenCheer, sprAlienPinkCheer, sprAlienPurpleCheer,
			sprAlienRedCheer, sprAlienWhiteCheer, sprAlienYellowCheer];

alienNumber = irandom(7);
idleAnimation = idleList[alienNumber];
cheerAnimation = cheerList[alienNumber];

sprite_index = idleAnimation;

depth = -y;
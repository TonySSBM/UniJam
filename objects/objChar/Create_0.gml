/// @description Initializing Variables

global.slowdown = false;

meter = 90.0;
meterRate = 1;
meterChargeRate = 10;

swingCharge = 0;
chargeRate = 2;
swinging = false;
charging = false;

moveSpeed = 4;
NORMALIZE_MOVEMENT = 0.7071;

returnSpeed = 6;

hBounds = 211;
vBounds = 12;
game_set_speed(60, gamespeed_fps);
game_set_speed(16666.67, gamespeed_microseconds);
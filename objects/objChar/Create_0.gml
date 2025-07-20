/// @description Initializing Variables

global.slowdown = false;
randomise();

meter = 100.0; //change later
meterRate = 5;
meterChargeRate = 10;

swingCharge = 0;
chargeRate = 2;
swinging = false;
charging = false;
superActive = false;

moveSpeed = 1.7;
baseMoveSpeed = moveSpeed;
slowSpeedModifier = 1/4;
NORMALIZE_MOVEMENT = 0.7071;

returnSpeed = 4;

hBounds = 211;
vBounds = 12;
game_set_speed(60, gamespeed_fps);
game_set_speed(16666.67, gamespeed_microseconds);

instance_create_layer(x,y,layer, objAngel);

event_user(2); //spawn alien audience
/// @description Sin Wave


if (flash_timer > 0) {
    flash_timer--;
    if (flash_timer == 0) {
        image_blend = c_white;
    }
}

depth = -y - 1;
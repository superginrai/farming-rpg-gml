 event_inherited(); 

walkSpeed = 1;
normalSpeed = 2;
runSpeed = 3;
spd = walkSpeed;

playerSpeed = normalSpeed;

x_frame = 1;
y_frame = 8;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

spr_base = -1;
spr_torso = -1;
spr_legs = -1;
spr_hair = -1;
spr_feet = -1;
spr_shadow = spr_character_shadow;

moveX = 0;
moveY = 0;
can_move = true;

alarm[1] = 1;

 

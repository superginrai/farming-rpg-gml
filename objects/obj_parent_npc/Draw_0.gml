var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;

if		(moveX < 0) y_frame = 9;
else if	(moveX > 0) y_frame = 11;
else if	(moveY < 0) y_frame = 8;
else if	(moveY > 0) y_frame = 10;
else				x_frame = 0;

xx = x-x_offset;
yy = y-y_offset;

// Increment frame for animation 
if (x_frame + (anim_speed/60) < anim_length) { x_frame += anim_speed/60; }
else { x_frame = 1; }

// Draw character shadow
if (spr_shadow != -1) draw_sprite(spr_character_shadow, 0, x, y);

// Draw character base
if (spr_base != -1) draw_sprite_part(spr_base,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// Draw character feet
if (spr_feet != -1) draw_sprite_part(spr_feet,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// Draw character legs
if (spr_legs != -1) draw_sprite_part(spr_legs,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// Draw character shirt
if (spr_torso != -1) draw_sprite_part(spr_torso,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// Draw character hair
if (spr_hair != -1) draw_sprite_part(spr_hair,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
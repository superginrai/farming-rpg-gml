var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;
 
switch(facing){
	case dir.left:	y_frame = 9;	break;
	case dir.right:	y_frame = 11;	break;
	case dir.up:	y_frame = 8;	break;	
	case dir.down:	y_frame = 10;	break;
	case -1:		x_frame = 0;	break;	
}

xx = x-x_offset;
yy = y-y_offset;

// Increment frame for animation
if (x_frame + (anim_speed/60) < anim_length) { x_frame += anim_speed/60; }
else { x_frame = 1; }

// Draw character shadow
draw_sprite(spr_character_shadow, 0, x, y);

// Draw character base
draw_sprite_part(spr_base,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// Draw character feet
draw_sprite_part(spr_feet,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// Draw character legs
draw_sprite_part(spr_legs,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// Draw character shirt
draw_sprite_part(spr_torso,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// Draw character hair
draw_sprite_part(spr_hair,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
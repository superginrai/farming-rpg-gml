box = spr_textbox;
frame = spr_portrait_frame;
portrait = spr_portraits;
namebox = spr_namebox;

box_width = sprite_get_width(box);
box_height = sprite_get_height(box);
port_width = sprite_get_width(portrait);
port_height = sprite_get_height(portrait);
namebox_width = sprite_get_width(namebox);
namebox_height = sprite_get_height(namebox);

port_x = (global.game_width - box_width - port_width) * 0.5;
port_y = (global.game_height * .98) - port_height;
box_x = port_x + port_width;
box_y = port_y;
namebox_x = port_x;
namebox_y = port_y - namebox_height;

x_buffer = 12;
y_buffer = 8;
text_x = box_x + x_buffer;
text_y = box_y + y_buffer;
name_text_x = namebox_x + (namebox_width/2);
name_text_y = namebox_y + (namebox_height/2);

portrait_index = 0;

text = "I could really go for some tacos, how about you?  Yeah, I really do like tacos, or anything even vaguely resembling them.";
name = "Josie";

text_col = c_black;
name_text_col = c_black;
font = fnt_text_12;
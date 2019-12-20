if(!show_inventory) exit;

//Inventory back
draw_sprite_part_ext(
	spr_inv_UI, 0, cell_size, 0, inv_UI_width, inv_UI_height, inv_UI_x, inv_UI_y, scale, scale, c_white, 1	
);

var info_grid = ds_player_info;

draw_set_font(fnt_text_24);
var c = c_black;
draw_text_color(info_x, info_y, info_grid[# 0, 3] + ": " + info_grid[# 1, 3], c, c, c, c, 1 );

draw_set_font(fnt_smalldigits);
var yy = 0; repeat(3){
	draw_text_color(info_x + (192*scale) + ((15+18)*scale*yy), info_y, string(info_grid[# 1, yy]), c, c, c, c, 1);
	yy+=1;
}
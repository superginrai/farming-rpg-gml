if (!planting) exit;

var cs = cellSize;
var xx = (mx div cs);
var yy = (my div cs);

xx = xx*cs;
yy = yy*cs;

var c = c_red;

var lay_id = layer_get_id("T_Soil");
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id, mx, my);
if(data != 0) { c = c_lime }

//Draw rectange red or green
draw_rectangle_color(xx, yy, xx+cs, yy+cs, c, c, c, c, true);

//Draw crop to be planted
draw_sprite(spr_crops_picked, selectCrop,  xx+(cs/2), yy+(cs/2));
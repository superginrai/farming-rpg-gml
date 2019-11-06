if (!planting) exit;

var cs = cellSize;
var xx = (mx div cs);
var yy = (my div cs);

xx = xx*cs;
yy = yy*cs;
 
//Draw crop to be planted
draw_sprite(spr_crops_picked, selectCrop,  xx+(cs/2), yy+(cs/2));
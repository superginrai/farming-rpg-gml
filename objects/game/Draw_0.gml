if(!debug) { exit; }

var xx = 0;

var cs = crops.cellSize;

draw_set_alpha(0.3);

var r = roomWidth div cs;

repeat(r){
	draw_line_color(xx, 0, xx, roomHeight, c_white, c_white);
	xx += cs;
}

var yy = 0;

var r = roomHeight div cs;

repeat(r){
	draw_line_color(0, yy, roomWidth, yy, c_white, c_white);
	yy  += cs;
}

draw_set_alpha(1);
//Draw notifications
var not_grid = ds_notifications;
var grid_height = ds_grid_height(not_grid);
var c = c_white;
 
var yy = 0; repeat(grid_height){
	var not_sign = ""; 
	if(not_grid[# 0, yy] > 0){ not_sign = "+"; }
	
	draw_text_color(
		100,
		(gui_height/2)+(yy*str_height)-(grid_height*str_height),
		not_sign+string(not_grid[# 0, yy]) + " " + string(not_grid[# 1, yy]),
		c,c,c,c, not_alpha
		);
		yy++;
}

//Fade away
if(fade_away) not_alpha -= 0.1;
if(not_alpha <= 0) instance_destroy();
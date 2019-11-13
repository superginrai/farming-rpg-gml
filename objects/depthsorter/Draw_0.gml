// Resize grid
var inst_num = instance_number(par_depthobject);
var dgrid  = ds_depthgrid;

ds_grid_resize(dgrid, 2, inst_num);

//Add instances to the grid
var yy = 0; with(par_depthobject){
	dgrid[# 0, yy] = id;
	dgrid[# 1, yy] = y;
	yy += 1;
}
 
//Sort the grid in ascending order
ds_grid_sort(dgrid, 1, true);

//Loop through the grid and draw all instances
var inst; yy = 0; repeat(inst_num){ 
	//Pull out an id
	inst = dgrid[# 0, yy];
	//Draw yourself
	with(inst){
		event_perform(ev_draw, 0);
	}
	
	yy += 1;
}
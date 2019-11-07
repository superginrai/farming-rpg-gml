// @instance_create_crop
// @arg x
// @arg y
// @arg crop_type

var cs = crops.cellSize;
var gx = argument0 div cs;
var gy = argument1 div cs;
var i_grid = crops.ds_crops_instances;
var cell = i_grid[# gx, gy];

if(cell == 0){
	xx = gx*cs;
	yy = gy*cs;

	// Check for soil
	var lay_id = layer_get_id("T_Soil");
	var map_id = layer_tilemap_get_id(lay_id);
	var data = tilemap_get_at_pixel(map_id, argument0, argument1);

	if (data == 0) {
		show_debug_message("There is no soil here.");
		return false;
	} else {
		show_debug_message("There is soil here.");
	}

	// Create the instance
	var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Instances", obj_crop);
	i_grid[# gx, gy] = inst;

	// Give the crops its characteristics
	with(inst){
		cropType = argument2;
		growthStageDuration = crops.ds_crops_types[# 0, cropType];
	}

	return inst;
} else {
	show_debug_message("There is already something there.");
	return false;
}
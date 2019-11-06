// @instance_create_crop
// @arg x
// @arg y
// @arg crop_type

var cs = crops.cellSize;
var xx = argument0 div cs;
var yy = argument1 div cs;

xx = xx*cs;
yy = yy*cs;

// Create the instance
var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Instances", obj_crop);

// Give the crops its characteristics
with(inst){
	cropType = argument2;
	growthStageDuration = crops.ds_crops_types[# 0, cropType];
}

return inst;
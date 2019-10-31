// @instance_create_crop
// @arg x
// @arg y
// @arg crop_type

// Create the instance
var inst = instance_create_layer(argument0, argument1, "Instances", obj_crop);

// Give the crops its characteristics
with(inst){
	cropType = argument2;
	growthStageDuration = crops.ds_crops_types[# 0, cropType];
}

return inst;
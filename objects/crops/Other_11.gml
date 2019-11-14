if (room == rm_farm){
	if(instance_exists(obj_crop)){
		with(obj_crop){
			if(growthStage < maxGrowthStage){
				daysOld += 1;
			
				//First growth
				var firstGrowth = 0;
				if(daysOld > 0){ firstGrowth = 1; }
			
				growthStage = firstGrowth + (daysOld div growthStageDuration);
			} else{
				growthStage = maxGrowthStage;
				fullyGrown = true;
				alarm[1] = 1;
			}
		}
	} 
} else if(ds_crops_data[# 0, 0] != -1){
	var h = ds_grid_height(ds_crops_data);
	var yy = 0; repeat(h){
		ds_crops_data[# 3, yy] += 1;
		yy += 1;
	}
	
}


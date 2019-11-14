if(room != rm_farm){ planting = false; exit; }

if(keyboard_check_pressed(ord("P"))) { planting = !planting }; 


if(planting) {
	mx = mouse_x;
	my = mouse_y;
	
	if(keyboard_check_pressed(vk_add)) selectCrop += 1;
	if(keyboard_check_pressed(vk_subtract)) selectCrop -= 1;
	
	if(selectCrop > sprite_get_number(spr_crops_picked) -1) { selectCrop = 0 };
	else if (selectCrop < 0) { selectCrop = sprite_get_number(spr_crops_picked) -1; } 
	
	if(mouse_check_button_pressed(mb_left)) {
		instance_create_crop(mx, my, selectCrop);
	}
}

if(instance_exists(obj_crop) and keyboard_check_pressed(ord("G"))){
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
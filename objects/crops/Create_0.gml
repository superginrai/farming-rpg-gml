ds_crops_types = -1; 
ds_crops_instances = -1;

enum crop {
	tomato,
	potato,
	carrot,
	artichoke,
	chili,
	gourd,
	corn
}

create_crop_type(4, 40);  //tomato
create_crop_type(3, 35);  //potato
create_crop_type(2, 25);  //carrot
create_crop_type(4, 45);  //artichoke
create_crop_type(3, 30);  //chili
create_crop_type(2, 20);  //gourd
create_crop_type(5, 50);  //corn

planting = false;
selectCrop = 0;

mx = 0;
my = 0;

cellSize = 32;
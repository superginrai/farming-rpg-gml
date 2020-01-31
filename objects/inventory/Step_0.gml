if(keyboard_check_pressed(ord("I"))) { show_inventory = !show_inventory; }

if(!show_inventory) exit;

mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cell_size+x_buffer)*scale;
var cell_ybuff = (cell_size+y_buffer)*scale;

var i_mousex = mousex - slots_x;
var i_mousey = mousey - slots_y;

var nx = i_mousex div cell_xbuff;
var ny = i_mousey div cell_ybuff;

var mouse_in_inventory = true;
if(nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height){
	var sx = i_mousex - (nx*cell_xbuff);
	var sy = i_mousey - (ny*cell_xbuff);

	if((sx < cell_size*scale) and (sy < cell_size*scale)){
		m_slotx = nx;
		m_sloty = ny;
	}
} else { mouse_in_inventory = false;
	
}

//Set selected slot to mouse position
selected_slot = min(inv_slots-1, m_slotx + (m_sloty*inv_slots_width));
 
//Pickup item

var inv_grid = ds_inventory;
var ss_item = inv_grid[# 0, selected_slot];

if(pickup_slot != -1){
	if(mouse_check_button_pressed(mb_left)){
		if(!mouse_in_inventory){
		//Drop item into the game world 
			var pitem = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, pickup_slot] -= 1;
			//Destroy item if it was the last one
			if(inv_grid[# 1, pickup_slot] == 0){ 
				inv_grid[# 0, pickup_slot] = item.none; 
				pickup_slot = -1; 
			}
		
			//Create the item on ground in the game world
			var inst = instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_item);
			with(inst){
				item_num = pitem;
				x_frame = item_num mod(spr_width/cell_size);
				y_frame = item_num div(spr_width/cell_size);
			}
			show_debug_message("Dropped an item"); 
		} else if(ss_item == item.none){
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			
			inv_grid[# 0, pickup_slot] = item.none;
			inv_grid[# 1, pickup_slot] = 0;	
			
			pickup_slot = -1;
			
		} else if (ss_item == inv_grid[# 0, pickup_slot]){
			if(selected_slot != pickup_slot){
				inv_grid[# 1, selected_slot] += inv_grid[# 1, pickup_slot];
				inv_grid[# 0, pickup_slot] = item.none;
				inv_grid[# 1, pickup_slot] = 0;			
			}
			
			pickup_slot = -1;
		} else {
			var ss_item_num = inv_grid[# 1, selected_slot];
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			
			inv_grid[# 0, pickup_slot] = ss_item;
			inv_grid[# 1, pickup_slot] = ss_item_num;	
			
			//pickup_slot = -1;
		}	
	}
}

else if(ss_item != item.none){
	//Drop item into game world
	if(keyboard_check_pressed(ord("D"))){
		inv_grid[# 1, selected_slot] -= 1;
		//Destroy item if it was the last one
		if(inv_grid[# 1, selected_slot] == 0){ 
			inv_grid[# 0, selected_slot] = item.none; 
		}
		
		//Create the item on ground in the game world
		var inst = instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_item);
		with(inst){
			item_num = ss_item;
			x_frame = item_num mod(spr_width/cell_size);
			y_frame = item_num div(spr_width/cell_size);
		}
		show_debug_message("Dropped an item");
	}
	
	if(mouse_check_button_pressed(mb_right)){
		pickup_slot = selected_slot;
	}
}
inputLeft = keyboard_check(vk_left);
inputRight = keyboard_check(vk_right);
inputUp = keyboard_check(vk_up);
inputDown = keyboard_check(vk_down);
inputWalk = keyboard_check(vk_control);
inputRun = keyboard_check(vk_shift);
inputInteract = keyboard_check_pressed(ord ("E"));

// Alter speed
if (inputWalk) { playerSpeed = walkSpeed };
else if (inputRun) { playerSpeed = runSpeed };
else playerSpeed = normalSpeed;

// Reset move variables
moveX = 0;
moveY = 0;

// Intended movement
moveX = (inputRight - inputLeft) * playerSpeed;
if(moveX == 0){moveY = (inputDown - inputUp) * playerSpeed;}

// Get direction player is facing
if(moveX != 0){
	switch(sign(moveX)){
		case 1: facing = dir.right; break;
		case -1: facing = dir.left; break;
	} 
}	else if(moveY != 0){
	switch(sign(moveY)){
		case 1: facing = dir.down; break;
		case -1: facing = dir.up; break;
	}
} else {
	facing = -1;
}

// Collision checks
// Horizontal
if (moveX != 0) {
	var collisionH = instance_place(x+moveX, y, obj_collision);
	if(collisionH != noone and collisionH.collideable){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, obj_collision)){
				x += sign(moveX);
			} else {
				break;
			}
		}	 
		moveX = 0;
	}
}

// Vertical
if (moveY != 0) {
	var collisionV = instance_place(x, y+moveY, obj_collision);
	if(collisionV != noone and collisionV.collideable){
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY), obj_collision)){
				y += sign(moveY);
			} else {
				break;
			}
		}	
		moveY = 0;
	}
}

// Transition
var inst = instance_place(x, y, obj_transition);
if(inst != noone and facing == inst.playerFacingBefore ){
	with(game){ 
		if (!doTransition){
			spawnRoom = inst.targetRoom;
			spawnX = inst.targetX;
			spawnY = inst.targetY;
			spawnPlayerFacing = inst.playerFacingAfter;
			doTransition = true; 
		}
	}
}

//Textbox
if(inputInteract){
	
	if (active_textbox == noone){

		var inst = collision_rectangle(x-radius, y-radius, x+radius, y+radius, obj_parent_npc, false, false);

		if(inst != noone){
			with(inst){
				var tbox = create_textbox(text, speakers);
				can_move = false;
				moveX = 0; moveY = 0;
			}
			active_textbox = tbox;
		}
	}	else {
		if(!instance_exists(active_textbox)){
			active_textbox = noone;	
		}
	}
}


// Apply movement 
x += moveX
y += moveY
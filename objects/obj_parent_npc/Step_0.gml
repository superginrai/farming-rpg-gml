if(!can_move) exit;

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


// Apply movement 
x += moveX
y += moveY
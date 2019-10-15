moveCam = keyboard_check(ord("C"));

if(moveCam){ 
	inputLeft = keyboard_check(vk_left);
	inputRight = keyboard_check(vk_right);
	inputUp = keyboard_check(vk_up);
	inputDown = keyboard_check(vk_down);
	x += (inputRight - inputLeft) * 6;
	y += (inputDown - inputUp) * 6; 	
}	else {
	x = clamp(x, following.x-h_border, following.x+h_border);
	y = clamp(y, following.y-v_border, following.y+v_border); 
}
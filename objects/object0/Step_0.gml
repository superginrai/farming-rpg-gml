inputLeft = keyboard_check(vk_left);
inputRight = keyboard_check(vk_right);
inputUp = keyboard_check(vk_up);
inputDown = keyboard_check(vk_down);
inputWalk = keyboard_check(vk_control);
inputRun = keyboard_check(vk_shift);


// Reset move variables
moveX = 0;
moveY = 0;

// Intended movement
moveX = (inputRight - inputLeft) * playerSpeed;
if(moveX == 0){moveY = (inputDown - inputUp) * playerSpeed;}

// Collision checks
if(){
	moveX = 0;
}

// Apply movement 
x += moveX
y += moveY
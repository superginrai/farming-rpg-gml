randomize();
room_goto_next();

debug = false;

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

blackAlpha = 0;

spawnRoom = -1; 
spawnX = 0;
spawnY= 0;
spawnPlayerFacing = -1;
doTransition = false; 

enum dir {
	right = 0,
	up = 90,
	left = 180,
	down = 270,
}	
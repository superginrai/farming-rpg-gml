seconds = 0;
minutes = 0;
hours = 0;

day = 1;
season = 1;
year = 1;

time_increment = 100 //seconds per step
time_pause = true;

max_darkness = 0.7;
darkness = 0;
light_color = c_black;
draw_daylight = false;

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

enum phase {
	sunrise = 6,
	daytime = 8.5,
	sunset = 18,
	nighttime = 22,
}
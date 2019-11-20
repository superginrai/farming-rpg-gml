if (keyboard_check_pressed(ord("T"))){ time_pause = !time_pause; }
if(time_pause) exit;

//Increment time
seconds += time_increment;
minutes = seconds/60;
hours = minutes/60;

if(draw_daylight){
	var darks, colors;
	
	if(hours > phase.sunrise and hours <= phase.daytime){  //Sunrise
		darks = [max_darkness, 0.2];
		colors = [merge_color(c_black, c_navy, 0.3), c_orange];
	} else if (hours > phase.daytime and hours <= phase.sunset){ //Day
		darks = [0.2, 0, 0, 0, 0.2];
		colors = [c_orange, c_orange, c_white, c_orange, c_orange];
	} else if (hours > phase.sunset and hours <= phase.nighttime){ //Sunset
		darks = [0.2, max_darkness];
		colors = [c_orange, c_navy, merge_color(c_black, c_navy, 0.3)];
	} else {
		darks = [max_darkness];
		colors = [merge_color(c_black, c_navy, 0.3)];		
	}
}


//Cycle check
if(hours >= 24) {
	seconds = 0;
	day += 1;
	with(crops){ event_perform(ev_other, ev_user1); }
	if(day > 30){
		day = 1;
		season += 1;
		if(season > 4){
		season = 1;
		year += 1;
		}
	}
}
if (keyboard_check_pressed(ord("T"))){ time_pause = !time_pause; }
if(time_pause) exit;

//Increment time
seconds += time_increment;
minutes = seconds/60;
hours = minutes/60;

darkness = hours/24;

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
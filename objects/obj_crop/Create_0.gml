frameWidth = 32;
frameHeight = 64; 

cropType = 0;
daysOld = 0;
growthStage = 3;
growthStageDuration = 0;
maxGrowthStage = (sprite_get_width(spr_crops)/frameWidth)-1;

fullyGrown = false;
sparkle = false;

xx = x-(frameWidth/2)+2;
yy = y-frameHeight+6; 
xScale = global.cameraWidth/1366;
yScale = global.cameraHeight/768;

width =  global.cameraWidth/12 * 11 * xScale;
height = global.cameraHeight/8 * 7 * yScale;

menuX = global.cameraX + (global.cameraWidth - width) * xScale/2;
menuY = global.cameraY + (global.cameraHeight- height) * yScale/2;

column = 80 * xScale;
row = 80 * yScale;

abilitySelected = false;

instance_create_depth(menuX + 16 * xScale + column*0, menuY + 16 * yScale + row*0, -999, obj_AbilitySelectionLargeSwordSwing);
instance_create_depth(menuX + 16*2 * xScale + column*1, menuY + 16 * yScale + row*0, -999, obj_AbilitySelectionRapidFire);
instance_create_depth(menuX + 16*3 * xScale + column*2, menuY + 16 * yScale + row*0, -999, obj_AbilitySelectionHighJump);
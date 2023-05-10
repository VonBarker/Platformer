width = 1000;
height = 550;

menuX = global.cameraWidth/2 - 1000/2;
menuY = global.cameraHeight/2 + 550/4;

column = 80;
row = 80;

instance_create_depth(menuX + 16 + column*0, menuY + 16 + row*0, -999, obj_AbilitySelectionLargeSwordSwing);
instance_create_depth(menuX + 16*2 + column*1, menuY + 16 + row*0, -999, obj_AbilitySelectionRapidFire);
instance_create_depth(menuX + 16*3 + column*2, menuY + 16 + row*0, -999, obj_AbilitySelectionHighJump);
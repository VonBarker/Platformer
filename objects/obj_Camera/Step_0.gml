if(instance_exists(target)){
	global.cameraX = instance_nearest(target.x, target.y, obj_CameraZone).x - (global.cameraWidth/2);
	global.cameraY = instance_nearest(target.x, target.y, obj_CameraZone).y - (global.cameraHeight/2);
	
	global.cameraWidth = instance_nearest(target.x, target.y, obj_CameraZone).image_xscale * 64;
	global.cameraHeight = instance_nearest(target.x, target.y, obj_CameraZone).image_yscale * 64;
}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

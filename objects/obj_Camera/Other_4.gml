//Camera
x = 0;
y = 0;
target = obj_Player;

global.cameraWidth = 1366;
global.cameraHeight = 768;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

//Display
displayScale = 1;
displayWidth = displayScale * global.cameraWidth;
displayHeight = displayScale * global.cameraHeight;

window_set_size(displayWidth,displayHeight);
surface_resize(application_surface,displayWidth,displayHeight);

//GUI
display_set_gui_size(global.cameraWidth, global.cameraHeight);

alarm[0] = 1;
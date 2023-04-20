function ChangeUpKeybind(){
	instance_create_depth(global.cameraX + global.cameraWidth/12 * 5, global.cameraY + global.cameraHeight/3, -1000, obj_LastKey);
	Menu
		(
			global.cameraX + global.cameraWidth/12 * 5,
			global.cameraY + global.cameraHeight/3,
			[
				["Submit", SubmitUpKeybind],
				["Close", CloseKeybindMenu]
			],
			"",
			global.cameraWidth/6,
			global.cameraHeight/3
		)
}
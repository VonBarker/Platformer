function SubmitJumpKeybind(){
	obj_Game.key_jump = keyboard_lastkey;
	CloseKeybindMenu();
	ClosePauseMenu();
}
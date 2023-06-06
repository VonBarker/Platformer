function SubmitMeleeKeybind(){
	obj_Game.key_MeleeAttack_Button1 = keyboard_lastkey;
	CloseKeybindMenu();
	ClosePauseMenu();
}
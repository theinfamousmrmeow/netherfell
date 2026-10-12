function menusClear() {
	//instance_destroy(MenuButton);
	with (MenuButton){
		if (object_index!=SettingsButton && object_index!=DoorButton){instance_destroy();}	
	}
	instance_destroy(textBox);
	saveOptions();

	with (SelectedItem){instance_destroy();}

	
}

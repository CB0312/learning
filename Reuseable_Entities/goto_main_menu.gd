extends Button



func _on_goto_main_menu_button_up():
	get_tree().paused=false
	get_tree().change_scene("res://All_Screens_/main_screen_interface_Welcome_.tscn")


extends Control

onready var current_scene_tree=get_tree()
onready var paused_overlay=get_node("paused_overlay")
onready var button_pause=$Button_pause
func _on_Button_pause_button_up():
	current_scene_tree.paused=!current_scene_tree.paused
	paused_overlay.visible=!paused_overlay.visible
	button_pause.visible=!button_pause.visible
	
func _on_play_Again_button_up():
	current_scene_tree.paused=!current_scene_tree.paused
	get_tree().change_scene("res://All_Screens_/Main_Level_1_scene_.tscn")

func _on_resume_button_up():
	current_scene_tree.paused=!current_scene_tree.paused
	paused_overlay.visible=!paused_overlay.visible
	button_pause.visible=!button_pause.visible

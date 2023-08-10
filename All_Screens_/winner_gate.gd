extends StaticBody2D

onready var current_scene_tree=get_tree()
# warning-ignore:unused_argument
func _on_Area2D_body_entered(body):
	
	get_tree().change_scene("res://All_Screens_/You_winned_massege.tscn")
	current_scene_tree.paused=!current_scene_tree.paused

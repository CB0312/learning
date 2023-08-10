extends KinematicBody2D
var direction=1
var vel=Vector2(0.0,0.0)
onready var hurdle=get_node("Sprite")
onready var player_death_sound=get_node("player_death_sound")

func _on_Area2D_body_entered(body):
	player_death_sound.play()
	$Camera2D.make_current()
func _physics_process(delta):
	
	if is_on_ceiling():
		direction*=-1
	if is_on_floor():
		direction*=-1
	vel.y=50.0*direction
	vel=move_and_slide(vel,Vector2.UP)

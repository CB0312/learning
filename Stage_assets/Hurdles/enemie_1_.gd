extends KinematicBody2D

var speed=200
var direction=1
var gravity=200
var vel=Vector2()
onready var camera=$Camera2D
onready var sprite=get_node("enemie")
onready var player_deth_sound=$Player_deth_sound
#player death sound
func _on_player_cuaght_body_entered(body):
	print("Entered")
	
	player_deth_sound.play()
	camera.make_current()
	
	
#death of enemie	
func _on_stomp_detector_body_entered(body):
	if body.global_position.y < get_node("stomp_detector").global_position.y:
		
		return
	queue_free()
	
	
		
# warning-ignore:unused_argument
func _physics_process(delta):
	
	if is_on_wall() :
		direction*=-1
	
	sprite.flip_h=true if direction==-1	else false
	
	vel.x=speed*direction if is_on_floor() else 20
		
	vel.y=gravity
	
	
	vel=move_and_slide(vel,Vector2.UP)
	






	




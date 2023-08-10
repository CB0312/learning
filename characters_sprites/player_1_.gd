extends KinematicBody2D


# veriables
onready var coin_sound=$coin_pickedup_sound
onready var Enemie_deth_sound=$Enemie_deth_sound
onready var score=$player_controlers/Score
onready var player:AnimatedSprite=get_node("Sprite")
onready var camera=$Camera2D
var score_rate=0
var speed=260.0
var garavity=150.0
var jump_force=0.0
var vel:Vector2=Vector2()


#coin functionalities 
func _on_coin_caught_body_entered(body):
	score_rate+=1
	coin_sound.play()
	score.text= "Score: %o" % score_rate

#deth_sound of enemie
func _on_enemie_caught_body_entered(body):
	Enemie_deth_sound.play()
	
# death of player
func _on_area_pl__body_entered(body):
	
	queue_free()
	
# Move forward & backward
func _physics_process(delta):
	vel.x=0.0
	vel.y+=garavity
	
	if Input.is_action_pressed("move_right"):
		player.flip_h=false
		vel.x+=speed
		
	if Input.is_action_pressed("move_left"):
		vel.x-=speed
		player.flip_h=true
		
		
	if Input.is_action_just_pressed("jump") and is_on_floor() :
		
		for i in range(110):
			var j:float= i/3
			vel.y-=jump_force
			jump_force+=j*delta
			garavity-=1
			
	if is_on_floor():
		player.play("anger")
		camera.make_current()
	if !is_on_floor():
		player.play("smile")
		camera.make_current()
	vel=move_and_slide(vel,Vector2.UP)
	jump_force=0.0
	garavity=80.0
	
	




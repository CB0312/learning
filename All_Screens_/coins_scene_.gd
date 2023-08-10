extends Node2D
onready var coin=$KinematicBody2D/AnimatedSprite

func _ready():
	coin.play("rotating")


func _on_Area2D_body_entered(body):
	queue_free()

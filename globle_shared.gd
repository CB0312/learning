extends Node

func _ready():
	var player_deaths = 0
	var score=0
	var player_deid=true
	var enemie_died=true
func	player_deth_Sound():
	$boxer_hit.play()
func enemie_deth_sound():
	$stumping_sound.play()

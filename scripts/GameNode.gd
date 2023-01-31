extends Node2D

onready var felpudo = get_node("Felpudo")
onready var time_replay = get_node("TimerToReplay")

var pontos = 0
var estado = 1

var JOGANDO = 1
var PERDENDO = 2

func _ready():
	pass
	
func kill():
	felpudo.apply_impulse(Vector2(0,0), Vector2(-1000, 0))
	get_node("BackAnimation").stop()
	estado = PERDENDO
	time_replay.start()


func _on_TimerToReplay_timeout():
	get_tree().reload_current_scene()

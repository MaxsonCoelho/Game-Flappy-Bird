extends Position2D

onready var cano = preload("res://scenes/Cano.tscn")

func _ready():
	randomize()


func _on_Timer_timeout():
	var novoCano = cano.instance()
	novoCano.set_global_position(get_global_position() + Vector2(0, rand_range(-500, 500)))
	get_owner().add_child(novoCano)

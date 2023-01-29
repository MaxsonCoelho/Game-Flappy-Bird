extends Node2D

export var vel = -150

func _ready():
	set_process(true)
	
func _process(delta):
	set_global_position(get_global_position() + Vector2(vel * delta, 0))
	
	if get_global_position().x < -100:
		print("destruído")
		queue_free()
	

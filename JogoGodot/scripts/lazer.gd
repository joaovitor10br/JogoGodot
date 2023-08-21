extends Node2D

var velocidade = 200

func _ready():
	pass

func _process(delta):
	translate(Vector2(0, -1) * velocidade * delta)


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

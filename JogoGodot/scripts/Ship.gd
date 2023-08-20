extends Sprite

const PRE_LAZER = preload("res://cenas/lazer.tscn")

var velocidade = 60

#posicao minima esquerda: 21
#posicao maxima direita: 139

func _ready():
	pass 

func _process(delta):
	
	var dirX = 0
	var dirY = 0
	
	if Input.is_action_pressed("ui_left"):
		dirX += -1
	
	if Input.is_action_pressed("ui_right"):
		dirX += 1
	
	if Input.is_action_pressed("ui_up"):
		dirY += -1
	
	if Input.is_action_pressed("ui_down"):
		dirY += 1
		
	if Input.is_action_just_pressed("ui_accept"):
		var lazer = PRE_LAZER.instance()
		get_parent().add_child(lazer)
		lazer.global_position = global_position + Vector2(0, -30)
		
	translate(Vector2(dirX,dirY) * velocidade * delta)
	
	global_position.x = clamp(global_position.x, 21, 139)
	global_position.y = clamp(global_position.y, 24, 266)

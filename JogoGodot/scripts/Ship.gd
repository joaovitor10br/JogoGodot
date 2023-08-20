extends Sprite

var velocidade = 60

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
	
	translate(Vector2(dirX,dirY) * velocidade * delta)
	pass

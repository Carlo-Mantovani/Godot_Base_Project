extends Node2D


var total: int = 0


func _ready() -> void:
	update_score(total)
	
func _process(delta: float) -> void:
	total += 1
	update_score(total)
	
func update_score(current_score: float) -> void:
	$Score.text = str(current_score)


const SPEED : int = 100
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
	   # Move enquanto a tecla estiver pressionada
	   position.x += SPEED * delta
	if Input.is_action_pressed("ui_left"):
	   # Move enquanto a tecla estiver pressionada
	   position.x -= SPEED * delta
	if Input.is_action_pressed("ui_down"):
	   # Move enquanto a tecla estiver pressionada
	   position.y += SPEED * delta
	if Input.is_action_pressed("ui_up"):
	   # Move enquanto a tecla estiver pressionada
	   position.y -= SPEED * delta
	
func _input(event: InputEvent)-> void:
	#print (event.as_text())
	if event.is_action_pressed("ui_right"):
		print ("Right arrow")
		
		

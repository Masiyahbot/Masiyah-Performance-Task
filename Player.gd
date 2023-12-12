extends Area2D

@onready var speed = 400
@onready var bgmusic = 
@onready var enemy_hit

func _process(delta):
	var velocity = Vector2.ZERO

	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
	position += velocity * delta


func _on_body_entered(body):
	hide()
	enemy_hit.play()
	bg_music.stop()

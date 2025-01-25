extends CharacterBody2D

@export var speed = 400
@export var spin:float = 2
@export var gravity = 20
@export var jump_speed = 600

var screen_size

func _ready():
	screen_size = get_viewport_rect().size
	
func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_bot"):
		velocity.y += 1
	if Input.is_action_pressed("move_top"):
		velocity.y -= 1
	if Input.is_action_pressed("spin"):
		rotate(speed * delta)
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed;
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	

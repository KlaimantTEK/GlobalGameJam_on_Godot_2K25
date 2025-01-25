extends CharacterBody2D

const gravity = 30
const SPEED = 300.0
const JUMP_VELOCITY = -1000.0

func _physics_process(delta: float) -> void:
	
	if !is_on_floor_only():
		velocity.y = gravity
		if velocity.y > 500:
			velocity.y = 500
	
	if Input.is_action_just_pressed("move_top"):
		velocity.y = JUMP_VELOCITY
	
	var h_dir = Input.get_axis("move_left", "move_right")
	velocity.x = SPEED * h_dir
	move_and_slide()

extends CharacterBody2D

const gravity = 400
const SPEED = 350.0
const JUMP_VELOCITY = -2500
var jumping = 0

func _physics_process(delta: float) -> void:
	
	if !is_on_floor_only():
		velocity.y = gravity
		if velocity.y > 500:
			velocity.y = 500
	
	if Input.is_action_just_pressed("move_top") && is_on_floor_only():
		jumping = 10
	
	if jumping != 0:
		jumping -= 1
		velocity.y += JUMP_VELOCITY
	
	var h_dir = Input.get_axis("move_left", "move_right")
	velocity.x = SPEED * h_dir
	move_and_slide()

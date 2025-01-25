extends Node

@export var platform_scene: PackedScene

func _ready():
	new_game()

func new_game():
	%start_Timer.start()

func _on_start_timer_timeout():
	%platform_timer.start()

func _on_platform_timer_timeout():
	var platform = platform_scene.instantiate()
	
	var platform_spawn_location = get_node("platform_path/platform_spawn_location")
	platform_spawn_location.progress_ratio = randf()
	
	platform.position = platform_spawn_location.position
	
	var velocity = Vector2(0.0, randf_range(150.0, 250.0))
	platform.linear_velocity = velocity
	
	add_child(platform)

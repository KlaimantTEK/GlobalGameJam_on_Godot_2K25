extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var Marker = get_node("Marker2D")
	var Player = get_node("Player")
	var spawn_platform = get_node("spawn_platform")
	spawn_platform.start()
	Player.position = Marker
	
func _on_spawn_platform_timeout() -> void:
	var platform = get_node("platform")
	
	var platform_spawn = get_node("platformpath/platform_spawn_path")
	platform_spawn.progress_ratio = randf()
	
	var direction = platform_spawn.rotation
	
	platform.position = platform_spawn.position
	

extends Node

func _ready() -> void:
	$AudioStreamPlayer2D.play()
	$AudioStreamPlayer2D2.play()
	await get_tree().create_timer(14.5).timeout
	$AudioStreamPlayer2D3.play()


func _on_video_stream_player_finished() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
	$AudioStreamPlayer2D.play()
	$AudioStreamPlayer2D2.play()

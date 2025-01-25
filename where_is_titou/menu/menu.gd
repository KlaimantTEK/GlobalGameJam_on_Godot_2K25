extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VBoxContainer/Play.grab_focus();


func _on_play_pressed():
	get_tree().change_scene_to_file("NULL");


func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://menu/options_menu.tscn");



func _on_quit_pressed() -> void:
	get_tree().quit();

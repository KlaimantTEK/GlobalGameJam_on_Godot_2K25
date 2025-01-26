extends Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.start()
	$VideoStreamPlayer.play()
	
func _process(delta: float) -> void:
	pass


func _on_timeout() -> void:
	$AudioStreamPlayer2D3.play()

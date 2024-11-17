extends Button


# Called when the node enters the scene tree for the first time.

func _on_pressed() -> void:
	$"../../modelimg".texture=load("res://model2.png")

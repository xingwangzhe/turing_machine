extends Button

	


## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass


func _on_pressed() -> void:
	#pass # Replace with function body.
	$"../../VBoxContainer/Label1".text='niaho'
	$"../../modelimg".texture=load("res://model1.png")


func _on_model_2_pressed() -> void:
	pass # Replace with function body.

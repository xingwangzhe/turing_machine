extends Button

	


## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass


func _on_pressed() -> void:
	#pass # Replace with function body.
	$"../../modelimg".texture=load("res://model1.png")
	$"../../decs".texture=load("res://dec1.png")
	$"../../VBoxContainer/Label1".text="0011"
	$"../../VBoxContainer/Label2".text="00001111"
	$"../../VBoxContainer/Label3".text="10"
	$"../../VBoxContainer/Label4".text="0010"
	$"../../VBoxContainer/Label5".text="111000111000"
	$"../../VBoxContainer/once".id=1
	

extends Button


# Called when the node enters the scene tree for the first time.

func _on_pressed() -> void:
	$"../../modelimg".texture=load("res://model2.png")
	$"../../decs".texture=load("res://dec2.png")
	$"../../VBoxContainer/Label1".text="aca"
	$"../../VBoxContainer/Label2".text="abcab"
	$"../../VBoxContainer/Label3".text="aabcaab"
	$"../../VBoxContainer/Label4".text="bacab"
	$"../../VBoxContainer/Label5".text="abbcbba"
	$"../../VBoxContainer/once".id=2

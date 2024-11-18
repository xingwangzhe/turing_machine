extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	$"../../modelimg".texture=load("res://model3.png")
	$"../../decs".texture=load("res://dec3.png")
	$"../../VBoxContainer/Label1".text="aa"
	$"../../VBoxContainer/Label2".text="aaaa"
	$"../../VBoxContainer/Label3".text="aaaaaaaa"
	$"../../VBoxContainer/Label4".text="aaaaaaaaaaaaaaaa"
	$"../../VBoxContainer/Label5".text="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	$"../../VBoxContainer/once".id=3
	

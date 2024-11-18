extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	$"../../modelimg".texture=load("res://model5.png")
	$"../../decs".texture=load("res://dec5.png")
	$"../../VBoxContainer/Label1".text="a"
	$"../../VBoxContainer/Label2".text="aa"
	$"../../VBoxContainer/Label3".text="aaa"
	$"../../VBoxContainer/Label4".text="aaaa"
	$"../../VBoxContainer/Label5".text="aaaaa"
	$"../../../full_action".text="等待下方输入"
	$"../../VBoxContainer/once".id=5


func _on_label_5_pressed() -> void:
	pass # Replace with function body.

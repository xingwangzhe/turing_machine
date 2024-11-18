extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	$"../../modelimg".texture=load("res://model4.png")
	$"../../decs".texture=load("res://dec4.png")
	$"../../VBoxContainer/Label1".text="00010"
	$"../../VBoxContainer/Label2".text="00001000"
	$"../../VBoxContainer/Label3".text="00100000"
	$"../../VBoxContainer/Label4".text="01000000"
	$"../../VBoxContainer/Label5".text="00000010"
	$"../../../full_action".text="等待下方输入"
	$"../../VBoxContainer/once".id=4
		

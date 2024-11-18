extends LineEdit


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_text_submitted(new_text: String) -> void:
	if($"../PanelContainer/VBoxContainer/once".id==3||$"../PanelContainer/VBoxContainer/once".id==5):
		$"../full_action".text='B'+$".".text+"BBBBBBBBBBBBBBBBBB"
		$"../PanelContainer/VBoxContainer/once".pos=1
		$"../PanelContainer/VBoxContainer/once".state=0
	else:
		$"../full_action".text="B"+$".".text+"B"
		$"../PanelContainer/VBoxContainer/once".pos=1
		$"../PanelContainer/VBoxContainer/once".state=0

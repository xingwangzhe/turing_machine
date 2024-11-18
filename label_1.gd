extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if($"../once".id==3||$"../once".id==5):
		$"../../../full_action".text='B'+$".".text+"BBBBBBBBBB"
		$"../once".pos=1
		$"../once".state=0
	else:
		$"../../../full_action".text="B"+$".".text+"B"
		$"../once".pos=1
		$"../once".state=0
	
	

extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("1"):
		$"../../full_action".text="B"+$Label1.text+"B"
		$once.pos=1
		$once.state=0	
	elif Input.is_action_just_pressed("2"):
		$"../../full_action".text="B"+$Label2.text+"B"
		$once.pos=1
		$once.state=0	
	elif Input.is_action_just_pressed("3"):
		$"../../full_action".text="B"+$Label3.text+"B"
		$once.pos=1
		$once.state=0	
	elif Input.is_action_just_pressed("4"):
		$"../../full_action".text="B"+$Label4.text+"B"
		$once.pos=1
		$once.state=0	
	elif Input.is_action_just_pressed("5"):
		$"../../full_action".text="B"+$Label5.text+"B"
		$once.pos=1
		$once.state=0	
	elif Input.is_action_just_pressed("n"):
		$once._on_pressed()

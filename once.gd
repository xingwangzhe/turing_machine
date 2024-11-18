extends Button

var pos=1
var state=0
var retain='o'
var id=-1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if(id==1):
		var result = $"../../../full_action".tur_action_1(pos, state)
		pos=result[0]
		state=result[1]
	elif(id==2):
		var result = $"../../../full_action".tur_action_2(pos, state,retain)
		pos=result[0]
		state=result[1]
		retain=result[2]
	

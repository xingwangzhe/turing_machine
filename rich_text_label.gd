extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_meta_clicked(meta): 
	if meta == "http://godotengine.org":
		OS.shell_open(meta)

#func _on_meta_clicked(meta: Variant) -> void:
	#if meta == "http://godotengine.org"
		#OS.shell_open(meta)

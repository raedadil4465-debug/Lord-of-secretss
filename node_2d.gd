extends Node2D

func _ready() -> void:
	Dialogic.timeline_ended.connect(_on_timeline_ended)
	
func _on_timeline_ended() -> void:
	print("Dialogue end")
func _unhandled_input(event: InputEvent) -> void:
	if Dialogic.current_timeline != null:
		return
	if event.is_action_pressed("interact"):
		get_viewport().set_input_as_handled()
		Dialogic.start("res://timeline.dtl")

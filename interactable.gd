extends Area2D

@export var timeline_name: String
@export var prompt_node: Label
var player_nearby:= false

func _ready() -> void:
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)
	print("Interactable ready: ", get_path())
	
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		player_nearby = true
		if prompt_node and Dialogic.current_timeline == null:
			prompt_node.visible = true

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		player_nearby = false
		if prompt_node:
			prompt_node.visible = false

func _unhandled_input(event: InputEvent) -> void:
	if not player_nearby or Dialogic.current_timeline != null:
		return
	if event.is_action_pressed("interact"):
		get_viewport().set_input_as_handled()
		if prompt_node:
			prompt_node.visible = false
		Dialogic.start(timeline_name)

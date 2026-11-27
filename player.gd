extends CharacterBody2D

@export var speed: float = 90.0

func _physics_process(delta: float) -> void:
	if Dialogic.current_timeline != null:
		velocity = Vector2.ZERO
		return
	var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity= direction * speed
	move_and_slide()

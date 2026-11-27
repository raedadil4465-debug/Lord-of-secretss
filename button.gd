extends Button

func _ready():
	pass
	
func _on_pressed():
	Dialogic.timeline_ended.connect(ended)
	Dialogic.start("timeline")


func ended():
	Dialogic.timeline_ended.disconnect(ended)
	print("ended")

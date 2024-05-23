extends Button

@onready var box = $"../Box_folder"

func _on_pressed():
	if SingletonNode.has_won_homework:
		box.visible = true

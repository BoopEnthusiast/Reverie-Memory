extends Button

@onready var box = $"../Box_folder"


func _on_pressed():
	box.visible = true

extends Button

@onready var box_folder = $"."
@onready var box = $"../Box_folder"


func _on_pressed():
	box.visible = true
	box_folder.Check_if_true()
	

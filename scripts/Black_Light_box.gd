extends Button


@onready var box = $"../CanvasLayer/Box_closeup"


func _on_pressed():
	box.visible = true



func _on_exit_pressed():
	box.visible = false


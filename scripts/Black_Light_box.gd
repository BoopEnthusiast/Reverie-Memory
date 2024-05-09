extends Button


@onready var box = $"../BoxLayer/Box_closeup"


func _on_pressed():
	box.visible = true



func _on_exit_pressed():
	box.visible = false


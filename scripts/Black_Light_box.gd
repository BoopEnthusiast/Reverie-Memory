extends Button


@onready var box = $"../BoxLayer/Box_closeup"


func _on_pressed():
	box.visible = true



func _on_exit_pressed():
	box.visible = false



func _on_mouse_entered():
	SingletonNode.cursor_trail_particles_node.enable()


func _on_mouse_exited():
	SingletonNode.cursor_trail_particles_node.disable()

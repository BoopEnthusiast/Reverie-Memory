extends Button

@onready var box = $"../Box_folder"

func _on_pressed():
	if SingletonNode.has_won_homework:
		box.visible = true


func _on_mouse_entered():
	SingletonNode.cursor_trail_particles_node.enable()


func _on_mouse_exited():
	SingletonNode.cursor_trail_particles_node.disable()

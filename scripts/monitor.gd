extends Button

@onready var monitor_screen = $"../MonitorLayer/MonitorScreen"




func _on_pressed():
	monitor_screen.visible = true


func _on_mouse_entered():
	SingletonNode.cursor_trail_particles_node.enable()


func _on_mouse_exited():
	SingletonNode.cursor_trail_particles_node.disable()

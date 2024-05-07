extends Button

@onready var monitor_screen = $"../MonitorLayer/MonitorScreen"




func _on_pressed():
	monitor_screen.visible = true

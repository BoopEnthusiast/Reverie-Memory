extends Button

@onready var monitor_screen = $"../MonitorLayer"




func _on_pressed():
	monitor_screen.visible = true

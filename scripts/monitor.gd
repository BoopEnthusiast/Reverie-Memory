extends Button

@onready var monitor_screen = $"../CanvasLayer/MonitorScreen"


func _on_pressed():
	monitor_screen.visible = true



func _on_exit_pressed():
	monitor_screen.visible = false



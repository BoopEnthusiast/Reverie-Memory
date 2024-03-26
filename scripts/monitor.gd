extends Button
const password = "sunflower"

@onready var monitor_screen = $"../MonitorScreen"

@onready var password_field = $"../MonitorScreen/PasswordField"


func _on_pressed():
	monitor_screen.visible = true
	


func _on_exit_pressed():
	monitor_screen.visible = false



func _on_password_field_text_changed():
	if password_field.text == password:
		password_field.visible = false
		

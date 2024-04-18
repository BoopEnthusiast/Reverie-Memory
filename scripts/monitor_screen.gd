extends ColorRect

const PASSWORD = "sunflower"

@onready var password_field = $PasswordScreen/PasswordField
@onready var password_screen = $PasswordScreen
@onready var browser_screen = $BrowserScreen


func _on_password_changed():
	if password_field.text == PASSWORD:
		password_screen.visible = false
		browser_screen.visible = true
	else:
		var caret_index = password_field.get_caret_column()
		var char_index = password_field.text.find('\n')
		if char_index >= 0:
			password_field.text = password_field.text.erase(char_index)
		if password_field.text.length() > 20:
			password_field.text = password_field.text.erase(21, 5)
		password_field.set_caret_column(caret_index)

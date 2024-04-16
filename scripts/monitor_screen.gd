extends ColorRect

const PASSWORD = "sunflower"

@onready var password_field = $PasswordScreen/PasswordField
@onready var password_screen = $PasswordScreen
@onready var browser_screen = $BrowserScreen


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_password_changed():
	if password_field.text == PASSWORD:
		password_screen.visible = false
		browser_screen.visible = true
	else:
		var char_index = password_field.text.find('\n')
		if char_index:
			password_field.text.erase(char_index)


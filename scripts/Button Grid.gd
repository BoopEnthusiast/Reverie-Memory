extends Control
@onready var buttons: Array[ColorButton]  = [$Button, $Button2, $Button3, $Button4, $Button5, $Button6, $Button7, $Button8, $Button9]
var what_colors_should_be: Array[int] = [3,5,2,2,4,0,1,3,3]

@onready var label = $Label

# Called when the node enters the scene tree for the first time.
func _ready():
	for button in buttons:
		button.color_changed.connect(color_changed)


func color_changed():
	var is_correct = true
	var i = 0
	
	print(what_colors_should_be)
	for button in buttons:
		print(button.current_color)
		print(button)
		if not button.current_color == what_colors_should_be[i]:
			is_correct = false
		i += 1
	
	print (is_correct)
	if is_correct == true:
		label.visible = true
		SingletonNode.win_buttons()
	
	


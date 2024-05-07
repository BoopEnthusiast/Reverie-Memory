extends Control
@onready var buttons: Array[ColorButton]  = [$Button, $Button2, $Button3, $Button4, $Button5, $Button6, $Button7, $Button8, $Button9]
var what_colors_should_be: Array[int] = [3,5,2,2,4,0,1,3,3]


# Called when the node enters the scene tree for the first time.
func _ready():
	for button in buttons:
		button.color_changed.connect(color_changed)


func color_changed():
	var is_correct = true
	var i = 0
	
	for button in buttons:
		if not button.current_color == what_colors_should_be[i]:
			is_correct = false
		i += 1
	

	if is_correct == true:
		SingletonNode.win_buttons()
	
	


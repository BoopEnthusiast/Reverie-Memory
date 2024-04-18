extends Control

var buttons: Array[ColorButton]  = [$Button, $Button2, $Button3, $Button4, $Button5, $Button6, $Button7, $Button8, $Button9]
var what_colors_should_be: Array[int] = [4,6,3,3,5,1,2,4,4]

# Called when the node enters the scene tree for the first time.
func _ready():
	for button in buttons:
		button.color_changed.connect(color_changed)


func color_changed():
	var is_correct = true
	var i = 0
	for button in buttons:
		if not button.CurrentColour == what_colors_should_be[i]:
			is_correct = false
		i += 1
	


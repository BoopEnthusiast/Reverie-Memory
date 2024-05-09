extends Control

@onready var nodes: Array[ColorButton]  = [$Code, $Code2, $Code3, $Code4, $Code5, $Code6, $Code7, $Code8, $Code9, $Code10, $Code11, $Code12, $Code13, $Code14]
var what_colors_should_be: Array[int] = [1,1,2,3,2,1,2,3,3,2,1,3,2,1]

# Called when the node enters the scene tree for the first time.
func _ready():
	for button in nodes:
		button.color_changed.connect(color_changed)


func color_changed():
	var is_correct = true
	var i = 0
	for button in nodes:
		if not button.CurrentColour == what_colors_should_be[i]:
			is_correct = false
		i += 1
	

extends Control

@onready var nodes: Array  = [$Code, $Code2, $Code3, $Code4, $Code5, $Code6, $Code7, $Code8, $Code9, $Code10, $Code11, $Code12, $Code13, $Code14]
var what_colors_should_be: Array[int] = [0,0,1,2,1,0,1, 2,2,1,0,2,1,0]
@onready var uv_light = $"../UVLight"

# Called when the node enters the scene tree for the first time.
func _ready():
	for button in nodes:
		button.color_changed.connect(color_changed)


func color_changed():
	var is_correct = true
	var i = 0
	print("Printing colors!\n\n")
	for button in nodes:
		print(button.current_color,"  ",what_colors_should_be[i],"  ", is_correct)
		if not button.current_color == what_colors_should_be[i]:
			is_correct = false
		i += 1
	if is_correct:
		visible = false
		uv_light.visible = true

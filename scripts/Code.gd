extends Button

signal color_changed

@onready var colors = [$Red1, $Green1, $Blue1]

var current_color = 0

func _on_pressed():
	current_color += 1
	for color in colors:
		color.visible = false
	
	if current_color > len(colors) - 1:
		current_color = 0
	
	colors[current_color].visible = true
	
	color_changed.emit()

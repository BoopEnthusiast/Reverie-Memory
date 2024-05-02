class_name ColorButton extends Button

signal color_changed

@onready var colors = [$Red, $Orange, $Yellow, $Green, $Blue, $Purple]


var current_color = 1

func _on_pressed():
	if SingletonNode.has_won_homework:
		color_changed.emit()
		
		current_color += 1
		for color in colors:
			color.visible = false
		
		if current_color > len(colors) - 1:
			current_color = 0
		
		colors[current_color].visible = true
		


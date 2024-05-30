class_name ColorButton extends Button

signal color_changed

@onready var colors = [$Red, $Orange, $Yellow, $Green, $Blue, $Purple]
@onready var timer = $"../../Box/Timer"
@onready var homework_first = $"../../Homework First"

var current_color = 1

func _on_pressed():
	if SingletonNode.has_won_homework:
	
		
		current_color += 1
		for color in colors:
			color.visible = false
		
		if current_color > len(colors) - 1:
			current_color = 0
		
		colors[current_color].visible = true
		color_changed.emit()
	
	else: 
		homework_first.visible = true
		timer.start()
	

func _on_timer_timeout():
	homework_first.visible = false

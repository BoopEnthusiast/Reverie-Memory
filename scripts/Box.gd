extends Button

@onready var box = $"../Box_folder"
@onready var homework_first = $"../Homework First"
@onready var timer = $"../Book/Timer"

func _on_pressed():
	if SingletonNode.has_won_homework:
		box.visible = true
	else: 
		homework_first.visible = true 
		timer.start()


func _on_mouse_entered():
	SingletonNode.cursor_trail_particles_node.enable()


func _on_mouse_exited():
	SingletonNode.cursor_trail_particles_node.disable()


func _on_timer_timeout():
	homework_first.visible = false

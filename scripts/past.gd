extends Control

@onready var homework_reminder = $HomeworkReminder


# Called when the node enters the scene tree for the first time.
func _ready():
	homework_reminder.play()


func _on_homework_reminder_finished():
	print("why not?")
	homework_reminder.play()

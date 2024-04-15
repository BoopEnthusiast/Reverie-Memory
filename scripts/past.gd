extends Control

@onready var homework_reminder = $HomeworkReminder


# Called when the node enters the scene tree for the first time.
func _ready():
	homework_reminder.play()

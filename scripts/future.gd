extends Control

@onready var call_mom_reminder = $CallMomReminder


# Called when the node enters the scene tree for the first time.
func _ready():
	call_mom_reminder.play()

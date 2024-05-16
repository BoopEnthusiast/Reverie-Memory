extends Button

var Current_Number = 0
@onready var box_folder = $".."

func _on_pressed():
	Current_Number += 1
	if Current_Number == 10:
		Current_Number = 0
	text = str(Current_Number)
	box_folder.pressed_1()


class_name PhoneButton extends Button


@export_range(0, 9) var number: int

signal number_pressed(number: int)


func _on_pressed():
	number_pressed.emit(number)

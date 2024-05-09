extends CanvasLayer

@onready var button_1 = $Button1
@onready var button_2 = $Button2
@onready var button_3 = $Button3

var Button1 = false
var Button2 = false
var Button3 = false

func _on_button_1_pressed():
	if button_1.Current_Number == 4:
		Button1 = true

func _on_button_2_pressed():
	if button_2.Current_Number == 2:
		Button2 = true

func _on_button_3_pressed():
	if button_3.Current_Number == 9:
		Button3 = true

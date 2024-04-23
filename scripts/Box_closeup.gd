extends ColorRect
@onready var box_closeup = $"."



func _on_exit_button_2_pressed():
	box_closeup.visible = false




func _on_black_light_box_pressed():
	box_closeup.visible = true

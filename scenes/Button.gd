extends Button
var Current_Number = 0
@onready var box_folder = $".."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

	
func _on_pressed():
	Current_Number += 1
	if Current_Number == 10:
		Current_Number = 0
	text = str(Current_Number)
	box_folder.button_2_changed()


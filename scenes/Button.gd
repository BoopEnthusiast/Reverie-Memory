extends Button
var Current_Number = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

	
func _on_pressed():
	Current_Number += 1
	if Current_Number == 10:
		Current_Number = 0
	text = str(Current_Number)


extends Button

signal color_changed

@onready var red = $Red1
@onready var green = $Green1
@onready var blue = $Blue1


var CurrentColour = 1

func _on_pressed():
	
	color_changed.emit()
	
	if CurrentColour == 1:
		red.visible = true
		green.visible = false
		blue.visible = false
		CurrentColour = 2
	
	else: if CurrentColour == 2:
		red.visible = false
		green.visible = true
		blue.visible = false
		CurrentColour = 3
		
	else: if CurrentColour == 3:
		red.visible = false
		green.visible = false
		blue.visible = true
		CurrentColour = 1

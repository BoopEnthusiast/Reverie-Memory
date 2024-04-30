class_name ColorButton extends Button

signal color_changed

@onready var red = $Red
@onready var orange = $Orange
@onready var yellow = $Yellow
@onready var green = $Green
@onready var blue = $Blue
@onready var purple = $Purple


var CurrentColour = 1

func _on_pressed():
	
	if SingletonNode.has_won_homework:
		color_changed.emit()
		
		if CurrentColour == 1:
			red.visible = true
			orange.visible = false
			yellow.visible = false
			green.visible = false
			blue.visible = false
			purple.visible = false
			CurrentColour = 2
		
		else: if CurrentColour == 2:
			red.visible = false
			orange.visible = true
			yellow.visible = false
			green.visible = false
			blue.visible = false
			purple.visible = false
			CurrentColour = 3
		
		else: if CurrentColour == 3:
			red.visible = false
			orange.visible = false
			yellow.visible = true
			green.visible = false
			blue.visible = false
			purple.visible = false
			CurrentColour = 4
			
		else: if CurrentColour == 4:
			red.visible = false
			orange.visible = false
			yellow.visible = false
			green.visible = true
			blue.visible = false
			purple.visible = false
			CurrentColour = 5
		
		else: if CurrentColour == 5:
			red.visible = false
			orange.visible = false
			yellow.visible = false
			green.visible = false
			blue.visible = true
			purple.visible = false
			CurrentColour = 6
		
		else: if CurrentColour == 6:
			red.visible = false
			orange.visible = true
			yellow.visible = false
			green.visible = false
			blue.visible = false
			purple.visible = true
			CurrentColour = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

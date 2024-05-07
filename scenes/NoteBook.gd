extends Button

@onready var note_screen = $"../Notebook Layer/NoteScreen"

func _on_pressed():
	note_screen.visible = true

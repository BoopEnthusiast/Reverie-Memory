extends Button

@onready var are_you_coming = $AreYouComing
@onready var texture_rect = $"../TextureRect"


func _on_pressed():
	if SingletonNode.has_won_past:
		texture_rect.visible = true
	else:
		are_you_coming.play()

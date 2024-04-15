extends Button

@onready var are_you_coming = $AreYouComing


func _on_pressed():
	are_you_coming.play()

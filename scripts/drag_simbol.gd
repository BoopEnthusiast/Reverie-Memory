extends AnimatableBody2D
class_name Symbol
var is_mouse_on = false
var is_dragging_this = false
@export var symbol : String
@onready var collision_shape_2d = $CollisionShape2D

func _on_mouse_entered():
	is_mouse_on = true


func _on_mouse_exited():
	is_mouse_on = false

func _physics_process(delta):
	if is_mouse_on or SingletonNode.is_dragging:
		if Input.is_action_pressed("click"):
			SingletonNode.is_dragging = true
		if is_mouse_on and SingletonNode.is_dragging and not is_dragging_this:
			is_dragging_this = true
		if is_dragging_this:
			
			global_position = get_global_mouse_position() - collision_shape_2d.shape.size/2
		if Input.is_action_just_released("click"):
			SingletonNode.is_dragging = false
			is_dragging_this = false

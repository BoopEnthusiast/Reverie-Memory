extends Area2D
var what_body
@onready var collision_shape_2d = $CollisionShape2D




	


func _on_body_exited(body):
	what_body = null 
	
func _physics_process(delta):
	
	if Input.is_action_just_released("click") and what_body:
		what_body.global_position = global_position


func _on_body_entered(body):
	print("D'DAYYY")

extends Area2D
var what_body




func _on_body_entered(body):
	print (body)
	if body is AnimatableBody2D:
		what_body = body.get_parent()
		print (what_body)
		
		
	


func _on_body_exited(body):
	what_body = null 
	
func _physics_process(delta):
	if Input.is_action_just_released("click") and what_body:
		what_body.global_position = global_position

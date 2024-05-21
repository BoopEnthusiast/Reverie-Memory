class_name TrailParticles extends GPUParticles2D

# Future color: f4cb00
# Past color: 3ca0ff

# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false
	SingletonNode.cursor_trail_particles_node = self
	disable()


func set_color_past() -> void:
	visible = true
	texture.gradient.set_color(0, Color("3ca0ff"))


func set_color_future() -> void: 
	visible = true
	texture.gradient.set_color(0, Color("f4cb00"))


func enable() -> void:
	emitting = true


func disable() -> void:
	emitting = false

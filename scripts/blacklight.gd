class_name UVLight extends Sprite2D


@onready var nums = $Nums

var initial_child_global_position: Vector2


func _ready():
	initial_child_global_position = nums.global_position
	SingletonNode.uv_light_node = self


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position = get_global_mouse_position()
	nums.global_position = initial_child_global_position


func enable() -> void:
	visible = true

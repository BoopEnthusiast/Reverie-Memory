extends Line2D

@onready var dot = $Dot
@onready var timer = $Timer

var point_count: int


func _ready():
	point_count = points.size()
	for point in points:
		point = get_local_mouse_position()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	dot.global_position = get_global_mouse_position()
	for i in range(point_count - 1, -1, -1):
		if i > 0:
			points[i] = points[i - 1]
		else:
			points[0] = get_local_mouse_position()
	await get_tree().create_timer(0.1, true, true).timeout
	dot.global_position = get_global_mouse_position()
	for i in range(point_count - 1, -1, -1):
		if i > 0:
			points[i] = points[i - 1]
		else:
			points[0] = get_local_mouse_position()

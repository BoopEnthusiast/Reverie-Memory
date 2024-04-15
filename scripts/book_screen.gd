extends ColorRect


@onready var sockets = [$Socket1, $Socket2, $Socket3, $Socket4, $Socket5]
@onready var drag_symbols: Array[DraggableSymbol] = [$DragSymbol1, $DragSymbol2, $DragSymbol3, $DragSymbol4, $DragSymbol5, $DragSymbol6, $DragSymbol7, $DragSymbol8, $DragSymbol9, $DragSymbol10, $DragSymbol11, $DragSymbol12]
var current_symbols: Array[String] = ["", "", "", "", ""]


var current_drag_symbol: DraggableSymbol
var current_selected_drag_symbol: DraggableSymbol


func _ready():
	for drag_symbol in drag_symbols:
		drag_symbol.mouse_over.connect(drag_symbol_hovered)
		drag_symbol.mouse_away.connect(drag_symbol_away)


func _input(event: InputEvent):
	if event is InputEventMouseMotion and current_selected_drag_symbol:
		current_selected_drag_symbol.global_position = event.global_position - current_selected_drag_symbol.size / 2
	elif Input.is_action_just_pressed("click") and current_drag_symbol:
		current_selected_drag_symbol = current_drag_symbol
	elif Input.is_action_just_released("click") and current_selected_drag_symbol:
		for socket in sockets:
			var pos = socket.get_local_mouse_position()
			var rect = Rect2(Vector2.ZERO, socket.size)
			if rect.has_point(pos):
				current_drag_symbol.global_position = socket.global_position
				
				break
		current_selected_drag_symbol = null


func drag_symbol_hovered(which_symbol: DraggableSymbol):
	current_drag_symbol = which_symbol


func drag_symbol_away(which_symbol: DraggableSymbol):
	if current_drag_symbol == which_symbol:
		current_drag_symbol = null


func _on_exit_button_pressed():
	visible = false

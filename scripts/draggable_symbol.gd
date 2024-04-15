@tool
extends PanelContainer
class_name DraggableSymbol


signal mouse_over(symbol: DraggableSymbol)
signal mouse_away(symbol: DraggableSymbol)

@export var symbol: String

@onready var symbol_node = $Symbol


func _ready():
	symbol_node.text = symbol


func _on_mouse_entered():
	mouse_over.emit(self)


func _on_mouse_exited():
	mouse_away.emit(self)

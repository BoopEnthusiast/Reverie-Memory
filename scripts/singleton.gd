extends Node

var is_dragging := false
var monitor_unlocked := false
var homework_done := false
@onready var do_homework = $DoHomework #made variable for time sensitive label dunno what to do from here


var past_winning_label: Label
var has_won_buttons := false
var has_won_homework := false

var sticky_note_label: ColorRect
func win_homework() -> void:
	sticky_note_label.visible = false
	if has_won_buttons:
		past_winning_label.visible = true
	has_won_homework = true


func win_buttons() -> void:
	if has_won_homework:
		past_winning_label.visible = true
	has_won_buttons = true

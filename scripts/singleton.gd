extends Node

var is_dragging := false
var monitor_unlocked := false
var homework_done := false

var past_winning_label: Label
var has_won_buttons := false
var has_won_homework := false


func win_homework() -> void:
	if has_won_buttons:
		past_winning_label.visible = true
	has_won_homework = true


func win_buttons() -> void:
	if has_won_homework:
		past_winning_label.visible = true
	has_won_buttons = true

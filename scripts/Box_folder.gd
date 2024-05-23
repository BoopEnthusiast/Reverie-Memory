extends CanvasLayer

@onready var inside_lock = $"../inside_lock"
@onready var button_1 = $Button1
@onready var button_2 = $Button2
@onready var button_3 = $Button3

var Button1 = false
var Button2 = false
var Button3 = false

func pressed_1():
	if button_1.Current_Number == 4:
		Button1 = true
		print("4")
	else: 
		Button1 = false
		print("fasle")

func pressed_2():
	if button_2.Current_Number == 2:
		Button2 = true
		print("2")
	else: 
		Button2 = false
		print("false")

func pressed_3():
	if button_3.Current_Number == 9:
		Button3 = true
		print("9")
	else: 
		Button3 = false
		print("false")

func Check_If_True():
	if Button1 and Button2 and Button3 == true:
		inside_lock.visible = true



extends CanvasLayer

@onready var button_1 = $Button1
@onready var button_2 = $Button2
@onready var button_3 = $Button3

var Button1 = false
var Button2 = false
var Button3 = false

func Check_If_True():
	print("running4")
	if Button1 and Button2 and Button3 == true:
		print("done")

func button_1_changed():
	print("running")
	if button_1.Current_Number == 4:
		Button1 = true
		Check_If_True()

func button_2_changed():
	print("running2")
	if button_2.Current_Number == 2:
		Button2 = true
		Check_If_True()

func button_3_changed():
	print("running3")
	if button_3.Current_Number == 9:
		Button3 = true
		Check_If_True()

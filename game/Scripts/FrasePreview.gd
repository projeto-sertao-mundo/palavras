extends Control

var mouseIn

func _ready():
	mouseIn = false;

func _on_Area2D_mouse_entered():
	mouseIn = true;
	print("mouseIn")
func _on_Area2D_mouse_exited():
	mouseIn = false;
	print("MouseOut")

func _process(_delta):
	if (Input.is_action_pressed("Click")):
			if (mouseIn):
				print("aparece")
				self.get_node("SpritePopUp").visible = true
			else:
				print(mouseIn)
				self.get_node("SpritePopUp").visible = false
			


func _on_Frase_mouse_entered():
	mouseIn = true;
func _on_Frase_mouse_exited():
	mouseIn = false;

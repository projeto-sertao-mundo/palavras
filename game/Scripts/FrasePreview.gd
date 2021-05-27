extends Control

var mouseIn
var spriteGrande

func _ready():
	mouseIn = false;
	spriteGrande = self.get_parent().get_node("RetalhoGrande")

func _on_Area2D_mouse_entered():
	mouseIn = true;

func _on_Area2D_mouse_exited():
	mouseIn = false

func _process(_delta):
	print(mouseIn)
	#if (Input.is_action_pressed("Click")):
	#		spriteGrande.visible = false
	#		#self.get_node("SpritePopUp").visible = false

func changeSpriteGrande(var texture):
	spriteGrande.texture = texture
	spriteGrande.visible = true

func _on_1_pressed():
	changeSpriteGrande(get_node("1").texture_normal)
func _on_2_pressed():
	changeSpriteGrande(get_node("2").texture_normal)
func _on_3_pressed():
	changeSpriteGrande(get_node("3").texture_normal)
func _on_4_pressed():
	changeSpriteGrande(get_node("4").texture_normal)
func _on_5_pressed():
	changeSpriteGrande(get_node("5").texture_normal)
func _on_6_pressed():
	changeSpriteGrande(get_node("6").texture_normal)
func _on_7_pressed():
	changeSpriteGrande(get_node("7").texture_normal)
func _on_8_pressed():
	changeSpriteGrande(get_node("8").texture_normal)

func _on_ExitButton_pressed():
	spriteGrande.visible = false;

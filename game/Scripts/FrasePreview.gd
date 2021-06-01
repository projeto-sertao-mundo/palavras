extends Control

var mouseIn
var spriteGrande
var alreadyChanged

func _ready():
	alreadyChanged = false
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
	changeSpriteGrande(get_node("FrasesPagina1").get_node("1").texture_normal)
func _on_2_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("2").texture_normal)
func _on_3_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("3").texture_normal)
func _on_4_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("4").texture_normal)
func _on_5_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("5").texture_normal)
func _on_6_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("6").texture_normal)
func _on_7_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("7").texture_normal)
func _on_8_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("8").texture_normal)
func _on_9_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("9").texture_normal)
func _on_10_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("10").texture_normal)
func _on_11_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("11").texture_normal)
func _on_12_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("12").texture_normal)
func _on_13_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("13").texture_normal)
func _on_14_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("14").texture_normal)
func _on_15_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("15").texture_normal)


func _on_ExitButton_pressed():
	spriteGrande.visible = false;

func _on_PaginaRetalho_pressed():
	if !alreadyChanged:
		get_node("FrasesPagina2").visible = true
		get_node("FrasesPagina1").visible = false
		alreadyChanged = true
	else:
		get_node("FrasesPagina1").visible = true
		get_node("FrasesPagina2").visible = false
		alreadyChanged = false

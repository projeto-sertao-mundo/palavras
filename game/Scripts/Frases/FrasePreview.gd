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

func changeSpriteGrande(var texture):#, var newFrase):
	if (!spriteGrande.visible):
		if ($"/root/TutorialGlobal".tutorialPos == 22 || !$"/root/TutorialGlobal".willDoTutorial || $"/root/TutorialGlobal".FrasesCompleted):
			if ($"/root/TutorialGlobal".tutorialPos == 22):
				get_parent().get_node("Tutorial4").Tutorial23()

			if (!spriteGrande.visible):
				spriteGrande.texture = texture
				spriteGrande.visible = true
				if (spriteGrande.has_node("retaio")):
					spriteGrande.get_node("retaio").free()
		

func _on_1_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("1").texture_normal)#, frase1)
func _on_2_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("2").texture_normal)#, frase2)
func _on_3_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("3").texture_normal)#, frase3)
func _on_4_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("4").texture_normal)#, frase4)
func _on_5_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("5").texture_normal)#, frase5)
func _on_6_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("6").texture_normal)#, frase6)
func _on_7_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("7").texture_normal)#, frase7)
func _on_8_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("8").texture_normal)#, frase8)
func _on_9_pressed():
	changeSpriteGrande(get_node("FrasesPagina1").get_node("9").texture_normal)#, frase9)
func _on_10_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("10").texture_normal)#, frase10)
func _on_11_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("11").texture_normal)#, frase11)
func _on_12_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("12").texture_normal)#, frase12)
func _on_13_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("13").texture_normal)#, frase13)
func _on_14_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("14").texture_normal)#, frase14)
func _on_15_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("15").texture_normal)#, frase15)
func _on_16_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("16").texture_normal)#, frase16)
func _on_17_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("17").texture_normal)#, frase17)
func _on_18_pressed():
	changeSpriteGrande(get_node("FrasesPagina2").get_node("18").texture_normal)#, frase18)


func _on_ExitButton_pressed():
	if ($"/root/TutorialGlobal".FrasesCompleted || !$"/root/TutorialGlobal".willDoTutorial):
		spriteGrande.visible = false;
		spriteGrande.get_parent().get_node("Descartar").visible = false
		spriteGrande.get_parent().get_node("Baixar").visible = false
		get_parent().get_node("FraseLock").visible = false

func _on_PaginaRetalho_pressed():
	if !alreadyChanged:
		get_node("FrasesPagina2").visible = true
		get_node("FrasesPagina1").visible = false
		alreadyChanged = true
	else:
		get_node("FrasesPagina1").visible = true
		get_node("FrasesPagina2").visible = false
		alreadyChanged = false




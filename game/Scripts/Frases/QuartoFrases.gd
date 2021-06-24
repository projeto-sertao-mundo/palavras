extends Node2D

export (String) var SceneName

func _on_Frase1_pressed():
	get_node("RetalhoPopUp").show()

func _on_Frase2_pressed():
	get_node("RetalhoPopUp").show()

func _on_Voltar_pressed():
	get_node("AnimationPlayer").play("FadeOut")
	#yield(Yield.yield_wait(0.35, self), "completed")
	

func _on_Voltar2_pressed():
	get_node("RetalhoPopUp").hide()

func _ready():
	if (!$"/root/TutorialGlobal".FrasesCompleted):
		get_node("Tutorial4").Tutorial22()
	get_node("AnimationPlayer").play("FadeIn")
	$"/root/Global".firstSceneNode = self

func _on_QuartoFrases_tree_entered():
	$"/root/Global".firstSceneNode = self


func _on_Area2D_area_entered(_area):
	pass # Replace with function body.


func _on_Descartar_pressed():
	if (!$"/root/TutorialGlobal".willDoTutorial || $"/root/TutorialGlobal".FrasesCompleted):
		get_node("Atençao").visible = true

func _on_NaoDescartar_pressed():
	get_node("Atençao").visible = false

func _on_Descart_pressed():
	print("titi")
	get_node("RetalhoGrande").visible = false
	
	for child in get_node("RetalhoGrande").get_children():
		if child is TextureButton:
			child.free()
	
	var grid = get_node("PalavrasPopUp/Cartões/GridCartões").get_children()
	
	for n in grid:
		n.free()
	
	get_node("Descartar").visible = false
	$"/root/Global".deleteCartaoSelecionado()
	get_node("Atençao").visible = false


func _on_AnimationPlayer_animation_finished(anim_name):
	if (anim_name == "FadeOut"):
		var _ignore = get_tree().change_scene("res://Cenas/CenasMenu/Corredor.tscn")

extends Node2D

export (String) var SceneName
var numeroCartoes = 0

func _on_Frase1_pressed():
	get_node("RetalhoPopUp").show()

func _on_Frase2_pressed():
	get_node("RetalhoPopUp").show()

func _on_Voltar_pressed():
	if ($"/root/TutorialGlobal".FrasesCompleted || !$"/root/TutorialGlobal".willDoTutorial):
		get_node("AnimationPlayer").play("FadeOut")
		if (!$Audio/Whoosh.playing):
			$Audio/Whoosh.play()
	#yield(Yield.yield_wait(0.35, self), "completed")
	

func _on_Voltar2_pressed():
	get_node("RetalhoPopUp").hide()

func _ready():
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
	get_node("ExitLock").visible = false
	get_node("RetalhoGrande").visible = false
	get_node("FraseLock").visible = false
	get_node("RetalhoGrande").isVisualization = false
	for child in get_node("RetalhoGrande").get_children():
		if child is TextureButton:
			child.free()
	
	var grid = get_node("PalavrasPopUp/Cartões/GridCartões").get_children()
	
	for n in grid:
		n.free()
	
	get_node("Descartar").visible = false
	$"/root/Global".deleteCartaoSelecionado()
	get_node("Atençao").visible = false
	
	numeroCartoes -= 1


func _on_AnimationPlayer_animation_finished(anim_name):
	if (anim_name == "FadeOut"):
		var _ignore = get_tree().change_scene("res://Cenas/CenasMenu/Corredor.tscn")

func _on_Confirm_pressed():
	if (numeroCartoes < 12):
		get_node("RetalhoGrande").CreateRetalhoBag()
		get_node("Confirm").visible = false
		get_node("Confirm").set_scale(Vector2(1.2,1.2))
		get_node("CartaoAnimation").play("Cartao")
		numeroCartoes += 1
		print(get_node("Confirm").rect_scale)

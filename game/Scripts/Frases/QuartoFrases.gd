extends Node2D

export (String) var SceneName
var numeroCartoes = 0
export(AudioStreamOGGVorbis) var voltarAudio

func _on_Voltar_pressed():
	if ($"/root/TutorialGlobal".FrasesCompleted || !$"/root/TutorialGlobal".willDoTutorial):
		get_node("AnimationPlayer").play("FadeOut")
		$Audio/Audio.stream = voltarAudio
		if (!$Audio/Audio.playing):
			$Audio/Audio.play()
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
	get_node("Baixar").visible = false
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


func DuplicateRetalhoGrande():
	var retalhos = get_node("ViewportContainer/Viewport/RetalhoGrande2").get_children()
	
	for retalho in retalhos:
		if (retalho is TextureButton):
			retalho.queue_free()
	
	retalhos = $RetalhoGrande.get_children()
	get_node("ViewportContainer/Viewport/RetalhoGrande2").texture = get_node("RetalhoGrande").texture
	
	for retalho in retalhos:
		if (retalho is TextureButton):
			var retalhoInstanciado = $"/root/Global".retalhoInstanceRef.instance()
			retalhoInstanciado.name = "retaioSave"
			retalhoInstanciado.get_node("Borda").modulate = retalho.get_node("Borda").modulate
			retalhoInstanciado.get_node("Miolo").modulate = retalho.get_node("Miolo").modulate
			retalhoInstanciado.get_node("Borda").texture = retalho.get_node("Borda").texture
			retalhoInstanciado.get_node("Miolo").texture = retalho.get_node("Miolo").texture
			retalhoInstanciado.get_node("Label").text = retalho.get_node("Label").text
			retalhoInstanciado.set_scale(retalho.rect_scale)
			retalhoInstanciado.set_position(retalho.rect_position)
			$ViewportContainer/Viewport/RetalhoGrande2.add_child(retalhoInstanciado)
#		$ViewportContainer/Viewport/RetalhoGrande2.move_child(retalhoInstanciado,0)


func SaveImage():
	var image = get_node("ViewportContainer/Viewport").get_texture().get_data()
	image.flip_y()
	image.save_png("res://Cartão.png")

func Download():
	var file = File.new()
	file.open("res://Cartão.png", File.READ)
	var base_64_data = Marshalls.raw_to_base64(file.get_buffer(file.get_len()))

	var url = "data:image/jpg;base64,"+base_64_data #dont forget the mimetype and encoding
	var comand = " var a = document.createElement('a'); a.href = '" + url + "'; a.setAttribute( 'download' , 'Screenshot.jpg' ); a.click(); "
	
	JavaScript.eval(comand)

func _on_Timer_timeout():
	SaveImage()
	Download()
	$Timer.stop()

func _on_Baixar_pressed():
	DuplicateRetalhoGrande()
	$Timer.start()

extends Node2D

export var path = ""

func _ready():
	if ($"/root/Global".firstTime || $"/root/Global".firstTime == null):
		$AnimationPlayer.play("FadeInFirst")
		$"/root/Global".firstTime = false
	else:
		get_node("AnimationPlayer").play("FadeIn")

func _on_Jogar_pressed():
	ChangeScene()

func ChangeScene():
	get_node("AnimationPlayer").play("FadeOut")
	#yield(Yield.yield_wait(0.35, self), "completed")
	

func _on_Creditos_pressed():
	$AnimationPlayer.play("CreditosIn")

func _on_VoltarCreditos_pressed():
	$AnimationPlayer.play("CreditosOut")

func _on_Voltar_pressed():
	ChangeScene()


func _on_AnimationPlayer_animation_finished(anim_name):
	if (anim_name == "FadeOut"):
		var _cenaChanged = get_tree().change_scene(path)


func _on_Jogar_mouse_entered():
	ScaleButton("Jogar")

func _on_Creditos_mouse_entered():
	ScaleButton("Creditos")

func _on_Sair_mouse_entered():
	ScaleButton("Sair")

func ScaleButton(var button):
	get_node(button).set_scale(get_node(button).get_scale() + Vector2(0.15,0.15))

func _on_Jogar_mouse_exited():
	UnScaleButton("Jogar")

func _on_Creditos_mouse_exited():
	UnScaleButton("Creditos")

func _on_Sair_mouse_exited():
	UnScaleButton("Sair")

func UnScaleButton(var button):
	get_node(button).set_scale(get_node(button).get_scale() - Vector2(0.15,0.15))


func _on_Sair_pressed():
	if OS.has_feature('JavaScript'):
		var file = File.new()
		file.open("res://screenshot.png", File.READ)
		var base_64_data = Marshalls.raw_to_base64(file.get_buffer(file.get_len()))
		var url = base_64_data
		var comand = "var a = document.createElement('a'); a.href = "+ url +"; a.setAttribute('download', Screenshot); a.click();"
		JavaScript.eval(comand)
	else:
		print("The JavaScript singleton is NOT available")

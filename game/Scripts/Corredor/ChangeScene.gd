extends Node2D

export(AudioStreamOGGVorbis) var voltarAudio
export(AudioStreamOGGVorbis) var confirmAudio
export var path = ""
var tocouAudio = false
var tocouAudioCreditos = false

func _ready():
	if ($"/root/Global".firstTime || $"/root/Global".firstTime == null):
		$AnimationPlayer.play("FadeInFirst")
		$"/root/Global".firstTime = false
		$"/root/TrilhaSonora".PlayMusic()
	else:
		get_node("AnimationPlayer").play("FadeIn")

func _on_Jogar_pressed():
	if (!tocouAudio):
		$Audio.stream = confirmAudio
		if (!$Audio.playing):
				$Audio.play()
		tocouAudio = true
	ChangeScene()

func ChangeScene():
	get_node("AnimationPlayer").play("FadeOut")
	#yield(Yield.yield_wait(0.35, self), "completed")
	

func _on_Creditos_pressed():
	if (!tocouAudioCreditos):
		$Audio.stream = confirmAudio
		if (!$Audio.playing):
				$Audio.play()
		tocouAudioCreditos = true
	$AnimationPlayer.play("CreditosIn")

func _on_VoltarCreditos_pressed():
	$Audio.stream = voltarAudio
	if (tocouAudioCreditos):
		if (!$Audio.playing):
				$Audio.play()
		$AnimationPlayer.play("CreditosOut")
		tocouAudioCreditos = false

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
	$Audio.stream = voltarAudio
	if (!$Audio.playing):
			$Audio.play()
	if OS.has_feature('JavaScript'):
		JavaScript.eval("window.close()")

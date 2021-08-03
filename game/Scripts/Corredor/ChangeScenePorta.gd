extends Node2D

onready var letraInstance = preload("res://Cenas/CenasPrefab/BotaoLetra.tscn")
#onready var palavraInstance = preload("res://Cenas/CenasPrefab/BotaoPalavra.tscn")
onready var retalhosFrasesInstance = preload ("res://Cenas/CenasPrefab/RetalhoFrases.tscn")
onready var morfemas = preload("res://Cenas/CenasPrefab/Morfemas.tscn")
onready var coresInstance = preload ("res://Cenas/CenasPrefab/Cores.tscn")
onready var retalhosInstance = preload ("res://Cenas/CenasPrefab/Preview.tscn")
onready var cartoes = preload ("res://Cenas/CenasPrefab/Cartoes.tscn")

export(AudioStreamOGGVorbis) var voltarAudio
export(AudioStreamOGGVorbis) var confirmAudio

var tocouAudio = false

var cena

func ChangeSceneBP():
	var _cenaChanged = get_tree().change_scene("res://Cenas/CenasJogaveis/BuscaPalavras.tscn")
func ChangeSceneQC():
	var _cenaChanged = get_tree().change_scene("res://Cenas/CenasJogaveis/QuartoCostura.tscn")
func ChangeSceneQF():
	var _cenaChanged = get_tree().change_scene("res://Cenas/CenasJogaveis/QuartoFrases.tscn")

func _ready():
	if ($"/root/TutorialGlobal".alreadyAsked):
		get_node("TutorialPergunta").visible = false
		get_node("Confirmacao").visible = false
	else:
		$"/root/TutorialGlobal".alreadyAsked = true
	
	if $"/root/Global".contPalavrasEncontradas == 43:
		get_node("PortaFechada").visible = true
	
	get_node("AnimationPlayer").play("FadeIn")
	$"/root/Global".setarRefs(morfemas, letraInstance, coresInstance, retalhosInstance, retalhosFrasesInstance, cartoes)

func _on_PortaBuscaPalavras_pressed():
	if (!$"/root/TutorialGlobal".lockCozinha):
		if $"/root/Global".contPalavrasEncontradas < 43:
			if (!tocouAudio):
				$Audio/Audio.stream = confirmAudio
				if (!$Audio/Audio.playing):
						$Audio/Audio.play()
				tocouAudio = true
			$AnimationPlayer.play("FadeOut")
			cena = "BP"

func _on_PortaQuartoCostura_pressed():
	if (!$"/root/TutorialGlobal".lockCostura):
		$AnimationPlayer.play("FadeOut")
		if (!tocouAudio):
			$Audio/Audio.stream = confirmAudio
			if (!$Audio/Audio.playing):
					$Audio/Audio.play()
			tocouAudio = true
		#yield(Yield.yield_wait(0.45, self), "completed")
		cena = "QC"

func _on_PortaQuartoMontagens_pressed():
	if (!$"/root/TutorialGlobal".lockFrases):
		$AnimationPlayer.play("FadeOut")
		
		if (!tocouAudio):
			$Audio/Audio.stream = confirmAudio
			if (!$Audio/Audio.playing):
				$Audio/Audio.play()
			tocouAudio = true
		#yield(Yield.yield_wait(0.45, self), "completed")
		cena = "QF"

func _on_VoltarMenu_pressed():
	if (($"/root/TutorialGlobal".CosturaCompleted && $"/root/TutorialGlobal".CozinhaCompleted && $"/root/TutorialGlobal".FrasesCompleted) || !$"/root/TutorialGlobal".willDoTutorial):
		$AnimationPlayer.play("FadeOut")
		#yield(Yield.yield_wait(0.45, self), "completed")
		cena = "Menu"
		if (!tocouAudio):
			$Audio/Audio.stream = voltarAudio
			if (!$Audio/Audio.playing):
				$Audio/Audio.play()
			tocouAudio = true


func _on_AnimationPlayer_animation_finished(anim_name):
	if (anim_name == "FadeOut"):
		if (cena == "BP"):
			ChangeSceneBP()
		elif (cena == "QC"):
			ChangeSceneQC()
		elif (cena == "QF"):
			ChangeSceneQF()
		elif (cena == "Menu"):
			var _cenaChanged = get_tree().change_scene("res://Cenas/CenasMenu/MenuPrincipal.tscn")


func _on_Nao_pressed():
	$Audio/Audio.stream = voltarAudio
	$Audio/Audio.play()
	$TutorialPergunta.visible = false
	$Confirmacao.visible = true
	$TutorialPergunta/Nao.set_scale(Vector2(1,1))

func _on_NaoC_pressed():
	$Audio/Audio.stream = voltarAudio
	$Audio/Audio.play()
	$TutorialPergunta.visible = true
	$Confirmacao.visible = false
	$Confirmacao/NaoC.set_scale(Vector2(1,1))

func _on_SimC_pressed():
	$Audio/Audio.stream = confirmAudio
	$Audio/Audio.play()
	$"/root/TutorialGlobal".lockCozinha = false
	$"/root/TutorialGlobal".lockCostura = false
	$"/root/TutorialGlobal".lockFrases = false
	$"/root/TutorialGlobal".willDoTutorial = false
	$TutorialPergunta.visible = false
	$Confirmacao.visible = false

func _on_Sim_pressed():
	$Audio/Audio.stream = confirmAudio
	$Audio/Audio.play()
	$TutorialPergunta.visible = false
	$Confirmacao.visible = false


func _on_PortaBuscaPalavras_mouse_entered():
	if ($"/root/Global".contPalavrasEncontradas < 43 && ( ($"/root/TutorialGlobal".CozinhaCompleted && $"/root/TutorialGlobal".CosturaCompleted && $"/root/TutorialGlobal".FrasesCompleted) || !$"/root/TutorialGlobal".willDoTutorial || $"/root/TutorialGlobal".tutorialPos == 2)):
		var anim = $NamesAnimation.get_animation("LetrasPulse")
		anim.set_loop(true)
		$NamesAnimation.play("LetrasPulse")

func _on_PortaBuscaPalavras_mouse_exited():
	$NamesAnimation.stop(true)


func _on_PortaQuartoCostura_mouse_entered():
	if (!$"/root/TutorialGlobal".willDoTutorial || $"/root/TutorialGlobal".tutorialPos == 12 || ($"/root/TutorialGlobal".CozinhaCompleted && $"/root/TutorialGlobal".CosturaCompleted && $"/root/TutorialGlobal".FrasesCompleted)):
		var anim = $NamesAnimation.get_animation("CosturaPulse")
		anim.set_loop(true)
		$NamesAnimation.play("CosturaPulse")

func _on_PortaQuartoCostura_mouse_exited():
	$NamesAnimation.stop(true)

func _on_PortaQuartoMontagens_mouse_entered():
	if (($"/root/TutorialGlobal".CozinhaCompleted && $"/root/TutorialGlobal".CosturaCompleted && $"/root/TutorialGlobal".FrasesCompleted) || !$"/root/TutorialGlobal".willDoTutorial || $"/root/TutorialGlobal".tutorialPos == 21):
		var anim = $NamesAnimation.get_animation("CartoesPulse")
		anim.set_loop(true)
		$NamesAnimation.play("CartoesPulse")

func _on_PortaQuartoMontagens_mouse_exited():
	$NamesAnimation.stop(true)

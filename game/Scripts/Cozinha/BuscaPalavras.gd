extends Node2D

onready var brilho = preload ("res://Cenas/CenasPrefab/BrilhoLetra.tscn")

onready var timer = get_node("Timer")

export (String) var SceneName
var aux = false
var lettersClick = 0
var lettersReach = 0
var cont = 40
var letrasMorfemas
var letraDestacada
var animTocou = false

func _ready():
	if ($"/root/TutorialGlobal".CozinhaCompleted):
		get_node("Tutorial2").visible = false
	get_node("AnimationPlayer").play("FadeIn")
	$"/root/Global".firstSceneNode = self
	timer.set_wait_time(1)
	timer.start()


func _process(delta):
	if $"/root/Global".contPalavrasEncontradas == 43 && !aux:
		get_node("AnimationPlayer").play("Parabens")
		aux = true
		get_node("Finish").visible = true

func _on_Voltar_pressed():
	if (lettersReach >= lettersClick):
		if (!$"/root/TutorialGlobal".willDoTutorial  || $"/root/TutorialGlobal".CozinhaCompleted):
			get_node("AnimationPlayer").play("FadeOut")
			if (!$Audio/Whoosh.playing):
				$Audio/Whoosh.play()
	#yield(Yield.yield_wait(0.35, self), "completed")
	
func _on_Bolsa_pressed():
	if ($"/root/TutorialGlobal".tutorialPos >= 6 || !$"/root/TutorialGlobal".willDoTutorial):
		get_node("PalavrasPopUp").show()
		get_node("Tutorial2").Tutorial7()

func _on_Voltar2_pressed():
	get_node("PalavrasPopUp").hide()

func _on_BuscaPalavras_tree_entered():
	$"/root/Global".firstSceneNode = self
	
func _on_TextureButton_pressed():
	_on_Voltar_pressed()

func _on_AnimationPlayer_animation_finished(anim_name):
	if (anim_name == "FadeOut"):
		var _cenaChanged = get_tree().change_scene("res://Cenas/CenasMenu/Corredor.tscn")

func _on_VoltarAll_pressed():
	_on_Voltar_pressed()

func _on_Timer_timeout():
	if (cont > 1):
		cont -= 1
		get_node("FundoAjuda/Label").set_text(str(cont))
	elif (!animTocou):
		animTocou = true
		get_node("FundoAjuda/Label").set_text(str(0))
		get_node("FundoAjuda/Ajuda").disabled = false
		var anim = $AjudaJuice.get_animation("EscondeFundo")
		anim.loop = false
		get_node("AjudaJuice").play("EscondeFundo")
	else:
		cont -= 1

func _on_Button_pressed():
	var letras = get_node("Letras").get_children()
	for letra in letras:
		if (letra.name != "A"):
			letra._on_TextureButton_pressed()

func AtualizeLetrasMorfemas(var letra):
	letrasMorfemas.erase(letra)

func _on_Ajuda_pressed():
	if ($"/root/TutorialGlobal".CozinhaCompleted || !$"/root/TutorialGlobal".willDoTutorial):
		if (cont < 1 && letraDestacada == null):
			var rng = RandomNumberGenerator.new()
			rng.randomize()
			if (letrasMorfemas.size() > 0):
				var randomNumber = rng.randi_range(0, letrasMorfemas.size() - 1)
				letraDestacada = letrasMorfemas[randomNumber]
				
				var instancia = brilho.instance()
				instancia.get_node("AnimationPlayer").play("Start")
				get_node("Letras").add_child(instancia)
				get_node("Letras").move_child(instancia,0)
				instancia.set_position(letrasMorfemas[randomNumber].posicao)
				
				letrasMorfemas[randomNumber].SetRef(instancia)
				
				AtualizeLetrasMorfemas(letrasMorfemas[randomNumber])
			cont = 40
			
			animTocou = false
			
			get_node("FundoAjuda/Ajuda").disabled = true
			$AjudaJuice.play_backwards("EscondeFundo")
			get_node("FundoAjuda/Label").set_text(str(cont))

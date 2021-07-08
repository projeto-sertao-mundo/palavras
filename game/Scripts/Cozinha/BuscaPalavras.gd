extends Node2D

onready var timer = get_node("Timer")

export (String) var SceneName
var aux = false
var lettersClick = 0
var lettersReach = 0
var cont = 40
var letrasMorfemas

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
		print("tii")
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
		get_node("Ajuda/Label").set_text(str(cont))
	else:
		cont -= 1
		get_node("Ajuda/Label").set_text("Ready")

func _on_Button_pressed():
	var letras = get_node("Letras").get_children()
	for letra in letras:
		if (letra.name != "A"):
			letra._on_TextureButton_pressed()

func AtualizeLetrasMorfemas(var letra):
	letrasMorfemas.erase(letra)

func _on_Ajuda_pressed():
	if (cont < 1):
		var rng = RandomNumberGenerator.new()
		rng.randomize()
		if (letrasMorfemas.size() > 0):
			var my_random_number = rng.randi_range(0, letrasMorfemas.size() - 1)
			letrasMorfemas[my_random_number].scale = Vector2(letrasMorfemas[my_random_number].scale.x + 0.5, letrasMorfemas[my_random_number].scale.y + 0.5)
			AtualizeLetrasMorfemas(letrasMorfemas[my_random_number])
		cont = 40
		get_node("Ajuda/Label").set_text(str(cont))

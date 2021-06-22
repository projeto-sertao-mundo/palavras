extends Node2D

export (String) var SceneName
var aux = false

func _process(delta):
	if $"/root/Global".contPalavrasEncontradas == 43 && !aux:
		get_node("AnimationPlayer").play("Parabens")
		aux = true
		get_node("Finish").visible = true

func _on_Voltar_pressed():
	get_node("AnimationPlayer").play("FadeOut")
	#yield(Yield.yield_wait(0.35, self), "completed")
	
func _on_Bolsa_pressed():
	if ($"/root/TutorialGlobal".tutorialPos >= 6 || !$"/root/TutorialGlobal".willDoTutorial):
		get_node("PalavrasPopUp").show()
		print("tii")
		get_node("Tutorial2").Tutorial7()

func _on_Voltar2_pressed():
	get_node("PalavrasPopUp").hide()

func _ready():
	if ($"/root/TutorialGlobal".CozinhaCompleted):
		get_node("Tutorial2").visible = false
	get_node("AnimationPlayer").play("FadeIn")
	$"/root/Global".firstSceneNode = self

func _on_BuscaPalavras_tree_entered():
	$"/root/Global".firstSceneNode = self
	
func _on_TextureButton_pressed():
	_on_Voltar_pressed()


func _on_AnimationPlayer_animation_finished(anim_name):
	if (anim_name == "FadeOut"):
		var _cenaChanged = get_tree().change_scene("res://Cenas/CenasMenu/Corredor.tscn")

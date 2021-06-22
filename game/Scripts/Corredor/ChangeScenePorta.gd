extends Node2D

onready var letraInstance = preload("res://Cenas/CenasPrefab/BotaoLetra.tscn")
#onready var palavraInstance = preload("res://Cenas/CenasPrefab/BotaoPalavra.tscn")
onready var retalhosFrasesInstance = preload ("res://Cenas/CenasPrefab/RetalhoFrases.tscn")
onready var morfemas = preload("res://Cenas/CenasPrefab/Morfemas.tscn")
onready var coresInstance = preload ("res://Cenas/CenasPrefab/Cores.tscn")
onready var retalhosInstance = preload ("res://Cenas/CenasPrefab/Preview.tscn")
onready var cartoes = preload ("res://Cenas/CenasPrefab/Cartoes.tscn")

onready var player = get_node("AnimationPlayer")

var cena

func ChangeSceneBP():
	var _cenaChanged = get_tree().change_scene("res://Cenas/CenasJogaveis/BuscaPalavras.tscn")
func ChangeSceneQC():
	var _cenaChanged = get_tree().change_scene("res://Cenas/CenasJogaveis/QuartoCostura.tscn")
func ChangeSceneQF():
	var _cenaChanged = get_tree().change_scene("res://Cenas/CenasJogaveis/QuartoFrases.tscn")

func _ready():
	get_node("AnimationPlayer").play("FadeIn")
	$"/root/Global".setarRefs(morfemas, letraInstance, coresInstance, retalhosInstance, retalhosFrasesInstance, cartoes)

func _on_PortaBuscaPalavras_pressed():
	if (!$"/root/TutorialGlobal".lockCozinha):
		if $"/root/Global".contPalavrasEncontradas < 43:
			get_node("AnimationPlayer").play("FadeOut")
			cena = "BP"

func _on_PortaQuartoCostura_pressed():
	if (!$"/root/TutorialGlobal".lockCostura):
		get_node("AnimationPlayer").play("FadeOut")
		#yield(Yield.yield_wait(0.45, self), "completed")
		cena = "QC"

func _on_PortaQuartoMontagens_pressed():
	if (!$"/root/TutorialGlobal".lockFrases):
		get_node("AnimationPlayer").play("FadeOut")
		#yield(Yield.yield_wait(0.45, self), "completed")
		cena = "QF"

func _on_VoltarMenu_pressed():
	get_node("AnimationPlayer").play("FadeOut")
	#yield(Yield.yield_wait(0.45, self), "completed")
	cena = "Menu"


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

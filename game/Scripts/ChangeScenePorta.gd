extends Node2D

onready var letraInstance = preload("res://Cenas/CenasPrefab/BotaoLetra.tscn")
#onready var palavraInstance = preload("res://Cenas/CenasPrefab/BotaoPalavra.tscn")
onready var retalhosFrasesInstance = preload ("res://Cenas/CenasPrefab/RetalhoFrases.tscn")
onready var morfemas = preload("res://Cenas/CenasPrefab/Morfemas.tscn")
onready var coresInstance = preload ("res://Cenas/CenasPrefab/Cores.tscn")
onready var retalhosInstance = preload ("res://Cenas/CenasPrefab/Preview.tscn")
onready var cartoes = preload ("res://Cenas/CenasPrefab/Cartoes.tscn")

func _ready():
	get_node("AnimationPlayer").play("FadeIn")
	$"/root/Global".setarRefs(morfemas, letraInstance, coresInstance, retalhosInstance, retalhosFrasesInstance, cartoes)

func _on_PortaBuscaPalavras_pressed():
	get_node("AnimationPlayer").play("FadeOut")
	yield(Yield.yield_wait(0.35, self), "completed")
	var _cenaChanged = get_tree().change_scene("res://Cenas/CenasJogaveis/BuscaPalavras.tscn")

func _on_PortaQuartoCostura_pressed():
	get_node("AnimationPlayer").play("FadeOut")
	yield(Yield.yield_wait(0.35, self), "completed")
	var _cenaChanged = get_tree().change_scene("res://Cenas/CenasJogaveis/QuartoCostura.tscn")

func _on_PortaQuartoMontagens_pressed():
	get_node("AnimationPlayer").play("FadeOut")
	yield(Yield.yield_wait(0.35, self), "completed")
	var _cenaChanged = get_tree().change_scene("res://Cenas/CenasJogaveis/QuartoFrases.tscn")

func _on_VoltarMenu_pressed():
	get_node("AnimationPlayer").play("FadeOut")
	yield(Yield.yield_wait(0.35, self), "completed")
	var _cenaChanged = get_tree().change_scene("res://Cenas/CenasMenu/MenuPrincipal.tscn")

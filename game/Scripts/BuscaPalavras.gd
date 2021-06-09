extends Node2D

export (String) var SceneName

onready var letra = preload("res://Cenas/CenasPrefab/BotaoLetra.tscn")
onready var morfemas = preload("res://Cenas/CenasPrefab/Morfemas.tscn")
#onready var palavra = preload("res://Cenas/CenasPrefab/BotaoPalavra.tscn")

func _on_Voltar_pressed():
	get_node("AnimationPlayer").play("FadeOut")
	yield(get_tree().create_timer(0.35), "timeout")
	var _cenaChanged = get_tree().change_scene("res://Cenas/CenasMenu/Corredor.tscn")

func _on_Bolsa_pressed():
	get_node("PalavrasPopUp").show()

func _on_Voltar2_pressed():
	get_node("PalavrasPopUp").hide()

func _ready():
	get_node("AnimationPlayer").play("FadeIn")
	$"/root/Global".setarRefs(morfemas, letra, null, null)
	$"/root/Global".firstSceneNode = self

func _on_BuscaPalavras_tree_entered():
	$"/root/Global".firstSceneNode = self

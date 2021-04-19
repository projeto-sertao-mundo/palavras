extends Node2D


onready var letra = preload("res://Cenas/CenasPrefab/BotaoLetra.tscn")
onready var palavra = preload("res://Cenas/CenasPrefab/BotaoPalavra.tscn")

func _on_Voltar_pressed():
	get_tree().change_scene("res://Cenas/CenasMenu/Corredor.tscn")

func _on_Bolsa_pressed():
	get_node("PalavrasPopUp").show()

func _on_Voltar2_pressed():
	get_node("PalavrasPopUp").hide()

func _ready():
	$"/root/Global".setarRefs(palavra, letra)
	$"/root/Global".firstSceneNode = self

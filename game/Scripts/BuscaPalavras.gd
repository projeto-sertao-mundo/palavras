extends Node2D

export (String) var SceneName

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
	$"/root/Global".firstSceneNode = self

func _on_BuscaPalavras_tree_entered():
	$"/root/Global".firstSceneNode = self

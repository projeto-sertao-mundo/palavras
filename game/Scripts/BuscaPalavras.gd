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
	yield(Yield.yield_wait(0.35, self), "completed")
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
	
func _on_TextureButton_pressed():
	_on_Voltar_pressed()

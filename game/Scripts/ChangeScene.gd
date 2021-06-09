extends Node2D

export var path = ""

func _ready():
	get_node("AnimationPlayer").play("FadeIn")

func _on_Jogar_pressed():
	ChangeScene()

func ChangeScene():
	get_node("AnimationPlayer").play("FadeOut")
	yield(get_tree().create_timer(0.35), "timeout")
	var _cenaChanged = get_tree().change_scene(path)

func _on_Creditos_pressed():
	get_node("CreditosPopUP").show()

func _on_VoltarCreditos_pressed():
	get_node("CreditosPopUP").hide()

func _on_Voltar_pressed():
	ChangeScene()

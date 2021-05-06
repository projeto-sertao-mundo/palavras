extends Node2D

export var path = ""

func _on_Jogar_pressed():
	ChangeScene()

func ChangeScene():
	var _cenaChanged = get_tree().change_scene(path)

func _on_Creditos_pressed():
	get_node("CreditosPopUP").show()

func _on_VoltarCreditos_pressed():
	get_node("CreditosPopUP").hide()

func _on_Voltar_pressed():
	ChangeScene()

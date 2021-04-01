extends Node2D

func _on_MaquinaCostura_pressed():
	get_node("CosturaPopUp").show()

func _on_Voltar_pressed():
	get_node("CosturaPopUp").hide()

func _on_Voltar2_pressed():
	get_tree().change_scene("res://Cenas/CenasMenu/Corredor.tscn")

extends Node2D

func _on_Frase1_pressed():
	get_node("RetalhoPopUp").show()

func _on_Frase2_pressed():
	get_node("RetalhoPopUp").show()

func _on_Voltar_pressed():
	get_tree().change_scene("res://Cenas/CenasMenu/Corredor.tscn")

func _on_Voltar2_pressed():
	get_node("RetalhoPopUp").hide()

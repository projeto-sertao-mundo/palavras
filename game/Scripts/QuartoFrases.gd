extends Node2D

export (String) var SceneName

func _on_Frase1_pressed():
	get_node("RetalhoPopUp").show()

func _on_Frase2_pressed():
	get_node("RetalhoPopUp").show()

func _on_Voltar_pressed():
	get_tree().change_scene("res://Cenas/CenasMenu/Corredor.tscn")

func _on_Voltar2_pressed():
	get_node("RetalhoPopUp").hide()

func _ready():
	$"/root/Global".firstSceneNode = self

func _on_QuartoFrases_tree_entered():
	$"/root/Global".firstSceneNode = self

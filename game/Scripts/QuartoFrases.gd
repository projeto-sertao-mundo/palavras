extends Node2D

export (String) var SceneName

func _on_Frase1_pressed():
	get_node("RetalhoPopUp").show()

func _on_Frase2_pressed():
	get_node("RetalhoPopUp").show()

func _on_Voltar_pressed():
	get_node("AnimationPlayer").play("FadeOut")
	yield(Yield.yield_wait(0.35, self), "completed")
	var _ignore = get_tree().change_scene("res://Cenas/CenasMenu/Corredor.tscn")

func _on_Voltar2_pressed():
	get_node("RetalhoPopUp").hide()

func _ready():
	get_node("AnimationPlayer").play("FadeIn")
	$"/root/Global".firstSceneNode = self

func _on_QuartoFrases_tree_entered():
	$"/root/Global".firstSceneNode = self


func _on_Area2D_area_entered(_area):
	pass # Replace with function body.

extends Node2D

func _on_MaquinaCostura_pressed():
	get_node("CosturaPopUp").show()

func _on_Voltar_pressed():
	get_node("CosturaPopUp").hide()

func _on_Voltar2_pressed():
	get_tree().change_scene("res://Cenas/CenasMenu/Corredor.tscn")


func MudarCor(var r, g, b):
	get_node("CosturaPopUp/Preview").modulate = Color(r,g,b)

func _on_Rosa_pressed():
	MudarCor(0.75, 0.14, 0.57)
func _on_Laranja_pressed():
	MudarCor(0.9, 0.59, 0.06)
func _on_Amarelo_pressed():
	MudarCor(0.85, 1, 0)
func _on_Azul_pressed():
	MudarCor(0, 0, 1)
func _on_Vermelho_pressed():
	MudarCor(1, 0, 0)
func _on_Verde_pressed():
	MudarCor(0,1,0)
func _on_Recomecar_pressed():
	MudarCor(1,1,1)

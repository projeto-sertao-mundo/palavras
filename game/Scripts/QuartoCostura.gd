extends Node2D

var podeSetar
var palavra

func _ready():
	$"/root/Global".firstSceneNode = self
	podeSetar = false

func _process(delta):
	if(podeSetar && !Input.is_action_pressed("Click")):
		MudarLabelPreview(palavra.text)
		palavra.free()
		podeSetar = false
	

func MudarLabelPreview(var texto):
	get_node("CosturaPopUp/Preview").get_node("Label").text = texto

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
	MudarLabelPreview("")

func _on_Area2D_area_entered(area):
	podeSetar = true
	palavra = area.get_parent()

func _on_Area2D_area_exited(area):
	podeSetar = false
	palavra = null

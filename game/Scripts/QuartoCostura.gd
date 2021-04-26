extends Node2D

var palavra
var numeroCaracteres = 0

onready var letraInstance = preload("res://Cenas/CenasPrefab/BotaoLetra.tscn")
onready var palavraInstance = preload("res://Cenas/CenasPrefab/BotaoPalavra.tscn")

func _ready():
	$"/root/Global".firstSceneNode = self
	$"/root/Global".podeSetar = false
	$"/root/Global".setarRefs(palavraInstance, letraInstance)

func _process(delta):
	
	if ($"/root/Global".podeSetar && !Input.is_action_pressed("Click") && palavra.name.length() > 1 && !palavra.isLetraAcentuada):
		if numeroCaracteres <= 10:
			MudarLabelPreview(palavra.get_node("Label").text)
			$"/root/Global".podeSetar = false
		palavra.free()
	elif ($"/root/Global".podeSetar && !Input.is_action_pressed("Click") && palavra.name.length() == 1):
		if numeroCaracteres <= 10:
			MudarLabelPreview(palavra.name)
			$"/root/Global".podeSetar = false
		palavra.free()
	

func MudarLabelPreview(var texto):
	numeroCaracteres += 1
	var textoAtual = get_node("CosturaPopUp/Preview").get_node("Label").text
	get_node("CosturaPopUp/Preview").get_node("Label").text = textoAtual + texto

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
	get_node("CosturaPopUp/Preview").get_node("Label").text = ""
	numeroCaracteres = 0
	print("rodei")

func _on_Area2D_area_entered(area):
	set_process(true)
	$"/root/Global".podeSetar = true
	palavra = area.get_parent()

func _on_Area2D_area_exited(area):
	set_process(false)
	$"/root/Global".podeSetar = false
	palavra = null

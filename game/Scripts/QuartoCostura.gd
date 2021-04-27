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
		if numeroCaracteres <= 15:
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

func _on_None_pressed():
	MudarCor(0.75, 0.14, 0.57)
func _on_Roxo_pressed():
	MudarCor(0.513726, 0.45098, 0.552941)
func _on_Amarelo_pressed():
	MudarCor(0.811765, 0.588235, 0.062745)
func _on_Azul_pressed():
	MudarCor(0.294118, 0.439216, 0.580392)
func _on_Vermelho_pressed():
	MudarCor(0.635294, 0.152941, 0.07451)
func _on_Verde_pressed():
	MudarCor(0.32549, 0.580392, 0.337255)

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

func _on_Quadrado_pressed():
	self.get_node("CosturaPopUp/Preview").texture = self.get_node("CosturaPopUp/Quadrado").texture_normal

func _on_Retangulo_pressed():
	self.get_node("CosturaPopUp/Preview").texture = self.get_node("CosturaPopUp/Retangulo").texture_normal

func _on_Losango_pressed():
	self.get_node("CosturaPopUp/Preview").texture = self.get_node("CosturaPopUp/Losango").texture_normal

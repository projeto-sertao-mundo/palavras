extends Node2D

var palavra
var numeroCaracteres = 0
var numeroRetalhos = 0
export var isMorfema = 0

onready var letraInstance = preload("res://Cenas/CenasPrefab/BotaoLetra.tscn")
#onready var palavraInstance = preload("res://Cenas/CenasPrefab/BotaoPalavra.tscn")
onready var morfemas = preload("res://Cenas/CenasPrefab/Morfemas.tscn")
onready var coresInstance = preload ("res://Cenas/CenasPrefab/Cores.tscn")
onready var retalhosInstance = preload ("res://Cenas/CenasPrefab/Preview.tscn")

var caminho = "CosturaPopUp/Formas/HolderFormas" #PASTA DESTINO DOS SPRITES MUDAR!!!

func _ready():
	$"/root/Global".firstSceneNode = self
	$"/root/Global".podeSetar = false
	$"/root/Global".setarRefs(morfemas, letraInstance, coresInstance, retalhosInstance)

func _process(_delta):
	
#	if ($"/root/Global".podeSetar && !Input.is_action_pressed("Click") && palavra.name.length() > 1 && !palavra.isLetraAcentuada):
#		if numeroCaracteres <= 15:
#			MudarLabelPreview(palavra.get_node("Label").text)
#			$"/root/Global".podeSetar = false
#		palavra.free()
	if ($"/root/Global".podeSetar && (palavra.name.length() == 1 || palavra.isMorfema)):
		var aux = numeroCaracteres + palavra.name.length()
		if  aux <= 11:
			
			var isPrefixo
			if palavra.name.length() == 3:
				isPrefixo = true
			else:
				isPrefixo = false
			
			if !palavra.isMorfema:
				MudarLabelPreview(palavra.name, palavra.name.length())
				$"/root/Global".podeSetar = false
			elif palavra.isMorfema && isPrefixo && numeroCaracteres == 0:
				MudarLabelPreview(palavra.name, palavra.name.length())
				$"/root/Global".podeSetar = false
			elif !isPrefixo && palavra.isMorfema && numeroCaracteres > 0:
				MudarLabelPreview(palavra.name, palavra.name.length())
				$"/root/Global".podeSetar = false
				
		palavra.free()
	

func MudarLabelPreview(var texto, var numCaracteres):
	numeroCaracteres += numCaracteres
	var textoAtual = get_node("CosturaPopUp/Preview").get_node("Label").text
	get_node("CosturaPopUp/Preview").get_node("Label").text = textoAtual + texto

func _on_MaquinaCostura_pressed():
	get_node("CosturaPopUp").show()

func _on_Voltar_pressed():
	get_node("CosturaPopUp").hide()

func _on_Voltar2_pressed():
	var _cenaChanged = get_tree().change_scene("res://Cenas/CenasMenu/Corredor.tscn")

func MudarCor(var r, g, b):
	get_node("CosturaPopUp/Preview").modulate = Color(r,g,b)

func _on_Recomecar_pressed():
	get_node("CosturaPopUp/Preview/Miolo").modulate = Color(0.882353, 0.882353, 0.819608)
	get_node("CosturaPopUp/Preview/Borda").modulate = Color(0.882353, 0.882353, 0.819608)
	get_node("CosturaPopUp/Preview").get_node("Label").text = ""
	numeroCaracteres = 0

func _on_Area2D_area_entered(area):
	set_process(true)
	$"/root/Global".podeSetar = true
	palavra = area.get_parent()

func _on_Area2D_area_exited(_area):
	set_process(false)
	$"/root/Global".podeSetar = false
	palavra = null

func mudarSprite(var nomeMiolo, var nomeBorda):
	self.get_node("CosturaPopUp/Preview/Miolo").texture = self.get_node(caminho + "/" + nomeMiolo).texture
	self.get_node("CosturaPopUp/Preview/Borda").texture = self.get_node(caminho + "/" + nomeBorda).texture

func _on_Quadrado_pressed():
	mudarSprite("Quadrado Miolo","Quadrado Borda")

func _on_Retangulo_pressed():
	mudarSprite("Retangulo Miolo","Retangulo Borda")

func _on_Losango_pressed():
	mudarSprite("Losango Miolo","Losango Borda")

func _on_Hexagono_pressed():
	mudarSprite("Hexagono Miolo","Hexagono Borda")

func _on_Circulo_pressed():
	mudarSprite("Circulo Miolo","Circulo Borda")

func _on_RetanguloPe_pressed():
	mudarSprite("Retangulo De Pe Miolo","Retangulo De Pe Borda")

func _on_Costurar_pressed():
	if (numeroCaracteres > 0):
		if numeroRetalhos < 9:
			var previewRef = self.get_node("CosturaPopUp/Preview")
			var spriteBorda = previewRef.get_node("Borda").texture
			var spriteMiolo = previewRef.get_node("Miolo").texture
			var corBorda = previewRef.get_node("Borda").modulate
			var corMiolo = previewRef.get_node("Miolo").modulate
			var label = previewRef.get_node("Label").text
			numeroRetalhos += 1
			
			$"/root/Global".criarRetalho(corBorda, corMiolo, spriteBorda, spriteMiolo, label)
			get_node("CosturaPopUp/Preview/Miolo").modulate = Color(0.882353, 0.882353, 0.819608)
			get_node("CosturaPopUp/Preview/Borda").modulate = Color(0.882353, 0.882353, 0.819608)
			get_node("CosturaPopUp/Preview/Label").text = ""
			numeroCaracteres = 0

func _on_QuartoCostura_tree_entered():
	$"/root/Global".firstSceneNode = self


func _on_Vermelho_button_down():
	print("IE")

extends Node2D

var palavra
var numeroCaracteres = 0
var numeroRetalhos = 0
export var isMorfema = 0
var clickPosition
var limite = 11

export(AudioStreamOGGVorbis) var voltarAudio
export(AudioStreamOGGVorbis) var confirmAudio
export(AudioStreamOGGVorbis) var createBordadoAudio

var tocouAudio = false


var caminho = "CosturaPopUp/Formas/HolderFormas" #PASTA DESTINO DOS SPRITES MUDAR!!!

func _ready():
	get_node("AnimationPlayer").play("FadeIn")
	$"/root/Global".firstSceneNode = self
	$"/root/Global".podeSetar = false
	$"/root/Global".limite = 11
	numeroRetalhos = $"/root/Global".retalhos.size()

func _process(_delta):
#	if ($"/root/Global".podeSetar && !Input.is_action_pressed("Click") && palavra.name.length() > 1 && !palavra.isLetraAcentuada):
#		if numeroCaracteres <= 15:
#			MudarLabelPreview(palavra.get_node("Label").text)
#			$"/root/Global".podeSetar = false
#		palavra.free()
	if ($"/root/Global".podeSetar && (palavra.name.length() == 1 || palavra.isMorfema)):
		var aux = numeroCaracteres + palavra.name.length()
#		print (aux, " ", $"/root/Global".limite)
		if  aux <= $"/root/Global".limite:
			
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
				
		#palavra.free()
		$"/root/Global".jaSetou = true
	

func MudarLabelPreview(var texto, var numCaracteres):
	numeroCaracteres += numCaracteres
	var textoAtual = get_node("CosturaPopUp/Preview").get_node("Label").text
	get_node("CosturaPopUp/Preview").get_node("Label").text = textoAtual + texto

func _on_MaquinaCostura_pressed():
	get_node("CosturaPopUp").show()

func _on_Voltar_pressed():
	if ($"/root/TutorialGlobal".CosturaCompleted || (!$"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".isRedoingTutorial)):
		get_node("CosturaPopUp").hide()

func _on_Voltar2_pressed():
	if ($"/root/TutorialGlobal".CosturaCompleted || (!$"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".isRedoingTutorial)):
		get_node("AnimationPlayer").play("FadeOut")
		if (!tocouAudio):
			$Audio/Audio.stream = voltarAudio
			if (!$Audio/Audio.playing):
				$Audio/Audio.play()
				tocouAudio = true
	#yield(Yield.yield_wait(0.35, self), "completed")
	
func MudarCor(var r, g, b):
	get_node("CosturaPopUp/Preview").modulate = Color(r,g,b)

func _on_Recomecar_pressed():
	if ((!$"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".isRedoingTutorial) || $"/root/TutorialGlobal".CosturaCompleted):
		#get_node("CosturaPopUp/Preview/Miolo").modulate = Color(0.882353, 0.882353, 0.819608)
		#get_node("CosturaPopUp/Preview/Borda").modulate = Color(0.882353, 0.882353, 0.819608)
		numeroCaracteres = get_node("CosturaPopUp/Preview").get_node("Label").text.length()
		if (numeroCaracteres > 0):
			var text = get_node("CosturaPopUp/Preview").get_node("Label").text
			
			var array = []
			for c in text:
				array.append(c)
			
			array.remove(numeroCaracteres - 1)
			
			var textC = ""
			for i in range(0,array.size()):
				textC += array[i]
			
			get_node("CosturaPopUp/Preview").get_node("Label").text = textC
			numeroCaracteres = array.size()

func _on_Area2D_area_entered(area):
	set_process(true)
	if !area.get_parent().isRetalho:
		$"/root/Global".podeSetar = true
		palavra = area.get_parent()

func _on_Area2D_area_exited(_area):
	set_process(false)
	$"/root/Global".podeSetar = false
	palavra = null

func mudarSprite(var nomeMiolo, var nomeBorda):
	if ($"/root/TutorialGlobal".tutorialPos == 15 || $"/root/TutorialGlobal".CosturaCompleted || (!$"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".isRedoingTutorial)):
		if ($"/root/TutorialGlobal".tutorialPos == 15):
			get_node("Tutorial3").Tutorial16()
		
		numeroCaracteres = get_node("CosturaPopUp/Preview").get_node("Label").text.length()
		while(numeroCaracteres > $"/root/Global".limite):
			_on_Recomecar_pressed()
		
		get_node("CosturaPopUp/Preview/Label").rect_size = Vector2(234, 100)
		
		self.get_node("CosturaPopUp/Preview/Miolo").texture = self.get_node(caminho + "/" + nomeMiolo).texture
		self.get_node("CosturaPopUp/Preview/Borda").texture = self.get_node(caminho + "/" + nomeBorda).texture

func _on_Quadrado_pressed():
	$"/root/Global".limite = 11
	mudarSprite("Quadrado Miolo","Quadrado Borda")

func _on_Retangulo_pressed():
	$"/root/Global".limite = 16
	mudarSprite("Retangulo Miolo","Retangulo Borda")

func _on_Losango_pressed():
	$"/root/Global".limite = 11
	mudarSprite("Losango Miolo","Losango Borda")

func _on_Hexagono_pressed():
	$"/root/Global".limite = 14
	mudarSprite("Hexagono Miolo","Hexagono Borda")

func _on_Circulo_pressed():
	$"/root/Global".limite = 11
	mudarSprite("Circulo Miolo","Circulo Borda")

func _on_RetanguloPe_pressed():
	$"/root/Global".limite = 13
	mudarSprite("Retangulo De Pe Miolo","Retangulo De Pe Borda")

func _on_Costurar_pressed():
	if ((!$"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".isRedoingTutorial) || $"/root/TutorialGlobal".CosturaCompleted):
		if ($"/root/TutorialGlobal".tutorialPos == 18):
			get_node("Tutorial3").Tutorial19()
		
		numeroCaracteres = get_node("CosturaPopUp/Preview").get_node("Label").text.length()
		if (numeroCaracteres > 0):
			if numeroRetalhos < 9:
				
				get_node("CosturaPopUp/CosturaAnimation").play("SaveRetalho")
				
				var previewRef = self.get_node("CosturaPopUp/Preview")
				var spriteBorda = previewRef.get_node("Borda").texture
				var spriteMiolo = previewRef.get_node("Miolo").texture
				var corBorda = previewRef.get_node("Borda").modulate
				var corMiolo = previewRef.get_node("Miolo").modulate
				var label = previewRef.get_node("Label").text
				numeroRetalhos += 1
				
				$"/root/Global".criarRetalho(corBorda, corMiolo, spriteBorda, spriteMiolo, label)
				numeroCaracteres = 0
				
				$Audio/Audio.stream = createBordadoAudio
				if (!$Audio/Audio.playing):
					$Audio/Audio.play()
				
				$CosturaPopUp/Preview/Label.set_size(Vector2(234, 100))

func _on_QuartoCostura_tree_entered():
	$"/root/Global".firstSceneNode = self

func _input(event):
	if event is InputEventScreenDrag:
		clickPosition = event.position
		#print(clickPosition)

func _on_AnimationPlayer_animation_finished(anim_name):
	if (anim_name == "FadeOut"):
		var _cenaChanged = get_tree().change_scene("res://Cenas/CenasMenu/Corredor.tscn")


func _on_CosturaAnimation_animation_finished(anim_name):
	if (anim_name == "SaveRetalho"):
		get_node("CosturaPopUp/Preview/Miolo").on_Costurar_pressed()
		get_node("CosturaPopUp/Preview/Borda").on_Costurar_pressed()
		get_node("CosturaPopUp/Preview/Label").text = ""
		get_node("CosturaPopUp/PalavrasPopUp").InstanciarPalavras()
		get_node("CosturaPopUp/CosturaAnimation").play("ScaleRetalho")


func _on_Maquina_pressed():
	if ((!$"/root/TutorialGlobal".willDoTutorial && !$"/root/TutorialGlobal".isRedoingTutorial) || $"/root/TutorialGlobal".tutorialPos >= 13 || $"/root/TutorialGlobal".CosturaCompleted):
		get_node("CosturaPopUp/CosturaAnimation").play("CosturaPopUp")
		$LOCK2.visible = true
		$Audio/Audio.stream = confirmAudio
		if (!$Audio/Audio.playing):
			$Audio/Audio.play()

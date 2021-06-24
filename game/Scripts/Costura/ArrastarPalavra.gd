extends TextureButton

var mouseIn
var primeiroNode
var palavraInstanciada
var palavrasParentesco
var clickPosition
export(bool) var isMorfema
export(bool) var isLetraAcentuada
export(bool) var isRetalho
export(bool) var isPrefixo
var numeroCaracteres
var auxL 

func _ready():
	auxL = false
	primeiroNode = $"/root/Global".firstSceneNode
	palavrasParentesco = primeiroNode

#func _process(_delta):
#	if (primeiroNode.name == "QuartoCostura"):
#		var nome = self.name
#		if ((nome.length() == 1 && !isRetalho) || self.isLetraAcentuada):
#			instanceLetraPalavra($"/root/Global".letraInstanceRef, nome)
#		else:
#			instanceLetraPalavra($"/root/Global".morfemaInstanceRef, nome)
#
#		if !mouseIn && mouseIn != null && palavrasParentesco.has_node(nome) && !$"/root/Global".podeSetar:
#			palavrasParentesco.get_node(nome).free()



func instanceLetraPalavra(var ref, var nome):
	if !palavrasParentesco.has_node(nome) && mouseIn && !$"/root/Global".jaSetou:
			palavraInstanciada = ref.instance()
			clickPosition = Vector2(self.rect_global_position)
			palavraInstanciada.set_position(Vector2(0,0))
			palavrasParentesco.add_child(palavraInstanciada)
			palavraInstanciada.name = nome
			palavraInstanciada.texture_normal = self.texture_normal
			palavraInstanciada.modulate = Color(self.modulate.r, self.modulate.g, self.modulate.b)
	elif palavrasParentesco.has_node(nome) && $"/root/Global".jaSetou:
		palavrasParentesco.get_node(nome).free()
	
	if palavrasParentesco.has_node(nome):
		palavraInstanciada = palavrasParentesco.get_node(nome)
		if (clickPosition != null):
			palavraInstanciada.set_position(clickPosition)
			palavraInstanciada.visible = true


func _input(event):
	if event is InputEventScreenDrag:
		clickPosition = event.position
		#print(clickPosition)


func _on_TextureButton_mouse_entered():
	mouseIn = true
	#set_process(true)

func _on_TextureButton_mouse_exited():
	mouseIn = false
	#set_process(false)

func _on_TextureButton_button_down():
	mouseIn = true
	$"/root/Global".jaSetou = false
func _on_TextureButton_button_up():
	mouseIn = false
func _on_Morfema_button_up():
	mouseIn = false
func _on_Morfema_button_down():
	$"/root/Global".jaSetou = false
	mouseIn = true


func _on_TextureButton_pressed():
	if (primeiroNode.name == "QuartoCostura"):
		var palavra = self
		var label = primeiroNode.get_node("CosturaPopUp/Preview/Label")
		var aux = label.text.length() + self.name.length()
		numeroCaracteres = label.text.length()
		
		if ($"/root/TutorialGlobal".tutorialPos == 14 || $"/root/TutorialGlobal".CosturaCompleted || !$"/root/TutorialGlobal".willDoTutorial):
			
			if ($"/root/TutorialGlobal".tutorialPos == 14 && !auxL):
				print(aux)
				primeiroNode.get_node("Tutorial3").Tutorial15()
				auxL = true
			
			if  aux <= $"/root/Global".limite:
				
				
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

func MudarLabelPreview(var texto, var numCaracteres):
	numeroCaracteres += numCaracteres
	var textoAtual = primeiroNode.get_node("CosturaPopUp/Preview/Label").text
	primeiroNode.get_node("CosturaPopUp/Preview/Label").text = textoAtual + texto


func _on_Morfema_pressed():
	_on_TextureButton_pressed()

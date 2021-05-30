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

func _ready():
	primeiroNode = $"/root/Global".firstSceneNode
	palavrasParentesco = primeiroNode

func _process(_delta):
	if (primeiroNode.name == "QuartoCostura"):
		var nome = self.name
		if ((nome.length() == 1 && !isRetalho) || self.isLetraAcentuada):
			instanceLetraPalavra($"/root/Global".letraInstanceRef, nome)
		else:
			instanceLetraPalavra($"/root/Global".morfemaInstanceRef, nome)
		
		if !mouseIn && mouseIn != null && palavrasParentesco.has_node(nome) && !$"/root/Global".podeSetar:
			palavrasParentesco.get_node(nome).free()



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

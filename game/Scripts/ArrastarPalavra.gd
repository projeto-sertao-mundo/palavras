extends TextureButton

var mouseIn
var primeiroNode
var palavraInstanciada
var palavrasParentesco
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
		
		if !Input.is_action_pressed("Click") && palavrasParentesco.has_node(nome) && !$"/root/Global".podeSetar:
			palavrasParentesco.get_node(nome).free()



func instanceLetraPalavra(var ref, var nome):
	if !palavrasParentesco.has_node(nome) && mouseIn:
			palavraInstanciada = ref.instance()
			palavraInstanciada.name = nome
			palavraInstanciada.visible = false
			palavrasParentesco.add_child(palavraInstanciada)
			palavraInstanciada.texture_normal = self.texture_normal
			palavraInstanciada.modulate = Color(self.modulate.r, self.modulate.g, self.modulate.b)
	
	if palavrasParentesco.has_node(nome):
		palavraInstanciada = palavrasParentesco.get_node(nome)
		palavraInstanciada.set_position(get_viewport().get_mouse_position())
		palavraInstanciada.visible = true


func _on_TextureButton_mouse_entered():
	mouseIn = true
	#set_process(true)

func _on_TextureButton_mouse_exited():
	mouseIn = false
	#set_process(false)

func _on_Button_pressed():
	pass 

func _on_TextureButton_pressed():
	pass

func _on_Morfema_mouse_entered():
	mouseIn = true

func _on_Morfema_mouse_exited():
	mouseIn = false

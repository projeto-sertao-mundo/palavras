extends TextureButton

var mouseIn
var primeiroNode
var palavraInstanciada
var palavrasParentesco
export var isLetraAcentuada = false

func _ready():
	primeiroNode = $"/root/Global".firstSceneNode
	palavrasParentesco = primeiroNode.get_node("ArrastarParentesco")

func _process(delta):
	if (primeiroNode.name == "QuartoCostura"):
		var nome = self.name
		
		if (nome.length() == 1 || self.isLetraAcentuada):
			instanceLetraPalavra($"/root/Global".letraInstanceRef, nome)
		else:
			instanceLetraPalavra($"/root/Global".palavraInstanceRef, nome)

func instanceLetraPalavra(var ref, var nome):
	if !palavrasParentesco.has_node(nome) && mouseIn && Input.is_action_pressed("Click"):
			palavraInstanciada = ref.instance()
			palavraInstanciada.name = nome
			palavraInstanciada.visible = false
			palavrasParentesco.add_child(palavraInstanciada)
			palavraInstanciada.texture_normal = self.texture_normal
			palavraInstanciada.modulate = Color(self.modulate.r, self.modulate.g, self.modulate.b)
	
	if palavrasParentesco.has_node(nome) && Input.is_action_pressed("Click"):
		palavraInstanciada = palavrasParentesco.get_node(nome)
		palavraInstanciada.set_position(get_viewport().get_mouse_position())
		palavraInstanciada.visible = true

	if !Input.is_action_pressed("Click") && palavrasParentesco.has_node(nome) && !$"/root/Global".podeSetar:
		palavrasParentesco.get_node(nome).free()


func _on_TextureButton_mouse_entered():
	mouseIn = true
	set_process(true)

func _on_TextureButton_mouse_exited():
	mouseIn = false
	set_process(false)

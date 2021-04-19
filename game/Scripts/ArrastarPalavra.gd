extends TextureButton

var mouseIn
var primeiroNode
var nome
var palavraInstanciada

func _ready():
	primeiroNode = $"/root/Global".firstSceneNode

func _process(delta):
	if (primeiroNode.name == "QuartoCostura"):
		
		if !primeiroNode.has_node("palavraInstanciada") && mouseIn && Input.is_action_pressed("Click"):
			palavraInstanciada = $"/root/Global".letraInstanceRef.instance()
			palavraInstanciada.name = "palavraInstanciada"
			palavraInstanciada.visible = false
			primeiroNode.add_child(palavraInstanciada)
			palavraInstanciada.texture_normal = self.texture_normal
			palavraInstanciada.modulate = Color(self.modulate.r, self.modulate.g, self.modulate.b)
			
			#letra.name = self.name
			#letra.get_node("Label").text = self.name
			#palavras.rect_scale.x = 0.3
			#palavras.rect_scale.y = 0.3
			
		if primeiroNode.has_node("palavraInstanciada") && Input.is_action_pressed("Click"):
			palavraInstanciada = primeiroNode.get_node("palavraInstanciada")
			palavraInstanciada.set_position(get_viewport().get_mouse_position())
			palavraInstanciada.visible = true

		if !Input.is_action_pressed("Click") && primeiroNode.has_node(self.name) && !$"/root/Global".podeSetar:
			primeiroNode.get_node("palavraInstanciada").free()


func _on_TextureButton_mouse_entered():
	mouseIn = true
	set_process(true)

func _on_TextureButton_mouse_exited():
	mouseIn = false
	set_process(false)

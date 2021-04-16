extends TextureButton

var mouseIn
var primeiroNode
var palavraInstanciada

func _ready():
	primeiroNode = $"/root/Global".firstSceneNode


func _process(delta):
	if (primeiroNode.name == "QuartoCostura"):
		if primeiroNode.has_node(self.name) && Input.is_action_pressed("Click") && mouseIn:
			palavraInstanciada.set_position(get_viewport().get_mouse_position())
			palavraInstanciada.visible = true
		
		elif mouseIn && Input.is_action_pressed("Click"):
			palavraInstanciada.visible = false
			primeiroNode.add_child(palavraInstanciada)
			palavraInstanciada.name = self.name
			palavraInstanciada.get_node("Label").text = self.name
			palavraInstanciada.rect_scale.x = 0.3
			palavraInstanciada.rect_scale.y = 0.3
		
		elif !Input.is_action_pressed("Click") && primeiroNode.has_node(self.name) && !$"/root/Global".podeSetar && palavraInstanciada:
			palavraInstanciada.free()
	

func _on_Button_mouse_entered():
	mouseIn = true
	palavraInstanciada = $"/root/Global".palavra.instance()

func _on_Button_mouse_exited():
	mouseIn = false



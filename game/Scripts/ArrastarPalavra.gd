extends Button

var mouseIn
var primeiroNode
var palavraInstanciada

func _ready():
	primeiroNode = $"/root/Global".firstSceneNode


func _process(delta):
	if primeiroNode.has_node(self.name) && Input.is_action_pressed("Click") && mouseIn:
		palavraInstanciada.set_position(get_viewport().get_mouse_position())
		palavraInstanciada.visible = true
	
	elif mouseIn && Input.is_action_pressed("Click"):
		palavraInstanciada.visible = false
		primeiroNode.add_child(palavraInstanciada)
		palavraInstanciada.text = self.text
		palavraInstanciada.name = self.name
	

func _on_Button_mouse_entered():
	mouseIn = true
	palavraInstanciada = $"/root/Global".palavra.instance()

func _on_Button_mouse_exited():
	mouseIn = false



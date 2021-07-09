extends TextureButton

var mouseIn
var primeiroNode
var morfemaInstanciado
var palavrasParentesco

func _ready():
	primeiroNode = self.get_parent().get_parent().get_parent().get_parent()
	palavrasParentesco = primeiroNode

func _process(_delta):
	if (primeiroNode.name == "QuartoCostura"):
		var nome = self.name
		
		instanceMorfema($"/root/Global".morfemaInstanceRef, nome)
		if !Input.is_action_pressed("Click") && palavrasParentesco.has_node(nome) && !$"/root/Global".podeSetar:
			palavrasParentesco.get_node(nome).free()

func instanceMorfema(var ref, var nome):
	if !palavrasParentesco.has_node(nome) && mouseIn && Input.is_action_pressed("Click"):
			morfemaInstanciado = ref.instance()
			morfemaInstanciado.name = nome
			morfemaInstanciado.visible = false
			palavrasParentesco.add_child(morfemaInstanciado)
			morfemaInstanciado.texture_normal = self.texture_normal
			#morfemaInstanciado.modulate = Color(self.modulate.r, self.modulate.g, self.modulate.b)
	
	if palavrasParentesco.has_node(nome) && Input.is_action_pressed("Click"):
		morfemaInstanciado = palavrasParentesco.get_node(nome)
		morfemaInstanciado.set_position(get_viewport().get_mouse_position())
		print(morfemaInstanciado.name)
		morfemaInstanciado.visible = true


func _on_Morfema_mouse_entered():
	mouseIn = true
func _on_Morfema_mouse_exited():
	mouseIn = false;

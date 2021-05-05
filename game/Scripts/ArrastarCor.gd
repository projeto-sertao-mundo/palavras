extends TextureButton

var mouseIn
var primeiroNode
var corInstanciada
var corParentesco
export var isLetraAcentuada = false

func _ready():
	#primeiroNode = $"/root/Global".firstSceneNode
	corParentesco = self.get_parent().get_node("CoresParent")

func _process(delta):
	var nome = self.name
	instanceCor($"/root/Global".coresInstanceRef, nome)
	if !Input.is_action_pressed("Click") && corParentesco.has_node(nome) && !$"/root/Global".podeSetar:
		corParentesco.get_node(nome).free()
		$"/root/Global".mudarcorArrastada(null)

func instanceCor(var ref, var nome):
	if !corParentesco.has_node(nome) && mouseIn && Input.is_action_pressed("Click"):
			corInstanciada = ref.instance()
			corInstanciada.name = nome
			corInstanciada.visible = false
			corParentesco.add_child(corInstanciada)
			corInstanciada.texture_normal = self.texture_normal
			$"/root/Global".mudarcorArrastada(corInstanciada)
			#corInstanciada.modulate = Color(self.modulate.r, self.modulate.g, self.modulate.b)
	
	if corParentesco.has_node(nome) && Input.is_action_pressed("Click"):
		corInstanciada = corParentesco.get_node(nome)
		corInstanciada.set_position(get_viewport().get_mouse_position())
		corInstanciada.visible = true


func on_TextureButton_mouse_entered():
	mouseIn = true
	#set_process(true)

func on_TextureButton_mouse_exited():
	mouseIn = false
	#set_process(false)


func _on_Verde_mouse_entered():
	on_TextureButton_mouse_entered()
func _on_Verde_mouse_exited():
	on_TextureButton_mouse_exited()
func _on_Vermelho_mouse_entered():
	on_TextureButton_mouse_entered()
func _on_Vermelho_mouse_exited():
	on_TextureButton_mouse_exited()
func _on_Azul_mouse_entered():
	on_TextureButton_mouse_entered()
func _on_Azul_mouse_exited():
	on_TextureButton_mouse_exited()
func _on_Branco_mouse_entered():
	on_TextureButton_mouse_entered()
func _on_Branco_mouse_exited():
	on_TextureButton_mouse_exited()
func _on_Roxo_mouse_entered():
	on_TextureButton_mouse_entered()
func _on_Roxo_mouse_exited():
	on_TextureButton_mouse_exited()
func _on_Amarelo_mouse_exited():
	on_TextureButton_mouse_exited()
func _on_Amarelo_mouse_entered():
	on_TextureButton_mouse_entered()

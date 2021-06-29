extends TextureButton

var mouseClicking
var clickPosition
var primeiroNode
var corInstanciada
var corParentesco
export var isLetraAcentuada = false

func _ready():
	primeiroNode = $"/root/Global".firstSceneNode
	corParentesco = self.get_parent().get_node("CoresParent")

func _process(_delta):
	if ($"/root/TutorialGlobal".tutorialPos == 16 || $"/root/TutorialGlobal".CosturaCompleted || !$"/root/TutorialGlobal".willDoTutorial):
		var nome = self.name
		instanceCor($"/root/Global".coresInstanceRef, nome)
		if !mouseClicking && corParentesco.has_node(nome) && !$"/root/Global".podeSetar:
			corParentesco.get_node(nome).free()
			$"/root/Global".mudarcorArrastada(null)

func instanceCor(var ref, var nome):
	if !corParentesco.has_node(nome) && mouseClicking && !$"/root/Global".jaSetou:
			corInstanciada = ref.instance()
			clickPosition = Vector2(self.rect_global_position)
			corInstanciada.set_position(Vector2(0,0))
			corParentesco.add_child(corInstanciada)
			corInstanciada.name = nome
			corInstanciada.visible = false
			corInstanciada.texture_normal = self.texture_normal
			$"/root/Global".mudarcorArrastada(corInstanciada)
	if corParentesco.has_node(nome) && mouseClicking:
		corInstanciada = corParentesco.get_node(nome)
		if (clickPosition != null):
			corInstanciada.set_position(clickPosition)
			corInstanciada.visible = true


func on_TextureButton_mouse_entered():
	mouseClicking = true
	$"/root/Global".cliking = true
	#set_process(true)

func on_TextureButton_mouse_exited():
	$"/root/Global".jaSetou = false
	$"/root/Global".cliking = false
	mouseClicking = false
	#set_process(false)

func _input(event):
	if event is InputEventScreenDrag:
		clickPosition = event.position
	#print(clickPosition)

func _on_Vermelho_button_down():
	on_TextureButton_mouse_entered()
func _on_Vermelho_button_up():
	on_TextureButton_mouse_exited()
func _on_Verde_button_down():
	on_TextureButton_mouse_entered()
func _on_Verde_button_up():
	on_TextureButton_mouse_exited()
func _on_Azul_button_down():
	on_TextureButton_mouse_entered()
func _on_Azul_button_up():
	on_TextureButton_mouse_exited()
func _on_Amarelo_button_up():
	on_TextureButton_mouse_exited()
func _on_Amarelo_button_down():
	on_TextureButton_mouse_entered()
func _on_Roxo_button_up():
	on_TextureButton_mouse_exited()
func _on_Roxo_button_down():
	on_TextureButton_mouse_entered()
func _on_Branco_button_down():
	on_TextureButton_mouse_entered()
func _on_Branco_button_up():
	on_TextureButton_mouse_exited()

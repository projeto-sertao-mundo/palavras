extends Control

var mouseIn = false
var primeiroNode
var palavraInstanciada
var palavrasParentesco
var nomeR = self.name

func _ready():
	primeiroNode = $"/root/Global".firstSceneNode
	palavrasParentesco = primeiroNode.get_node("ArrastarParentesco")

func _process(_delta):
	if (primeiroNode.name == "QuartoCostura"):
		instanceRetalho($"/root/Global".retalhoInstanceRef, "retaio")
	
	if !Input.is_action_pressed("Click") && palavrasParentesco.has_node("retaio") && !$"/root/Global".podeSetar:
		$"/root/Global".mudarRetalhoArrastado(null)
		palavrasParentesco.get_node("retaio").free()

func instanceRetalho(var ref, var nome):
	if !palavrasParentesco.has_node(nome) && mouseIn && Input.is_action_pressed("Click"):
		palavraInstanciada = ref.instance()
		palavraInstanciada.name = nome
		palavraInstanciada.visible = false
		palavrasParentesco.add_child(palavraInstanciada)
		
		$"/root/Global".mudarRetalhoArrastado(self)
		
		palavraInstanciada.set_scale(Vector2(0.7,0.7))
		
		var mioloInst = palavraInstanciada.get_node("Miolo")
		var bordaInst = palavraInstanciada.get_node("Borda")
		var mioloSelf = self.get_node("Miolo")
		var bordaSelf = self.get_node("Borda")
		
		mioloInst.texture = self.get_node("Miolo").texture
		bordaInst.texture = self.get_node("Borda").texture
		
		mioloInst.modulate = Color(mioloSelf.modulate.r, mioloSelf.modulate.g, mioloSelf.modulate.b)
		bordaInst.modulate = Color(bordaSelf.modulate.r, bordaSelf.modulate.g, bordaSelf.modulate.b)
		
		palavraInstanciada.get_node("Label").text = self.get_node("Label").text
	
	if palavrasParentesco.has_node(nome) && Input.is_action_pressed("Click"):
		palavraInstanciada = palavrasParentesco.get_node(nome)
		palavraInstanciada.set_position(get_viewport().get_mouse_position())
		palavraInstanciada.visible = true

func _on_Preview_mouse_entered():
	mouseIn = true
func _on_Preview_mouse_exited():
	mouseIn = false
func _on_TextureButton_mouse_entered():
	mouseIn = true
func _on_TextureButton_mouse_exited():
	mouseIn = false

extends Control

var mouseIn
var primeiroNode
var palavraInstanciada
var palavrasParentesco
var nomeR = self.name
var sprite
var clickPosition
var areaEntered

export var isRetalho = true

func _ready():
	primeiroNode = $"/root/Global".firstSceneNode
	palavrasParentesco = primeiroNode
	if (primeiroNode.has_node("RetalhoGrande")):
		sprite = primeiroNode.get_node("RetalhoGrande")

func _process(_delta):
	
	if (primeiroNode.name == "QuartoCostura"):
		instanceRetalho($"/root/Global".retalhoInstanceRef, "retaio")
	elif (primeiroNode.name == "QuartoFrases"):
		if (sprite.visible):
			instanceRetalho($"/root/Global".retalhoInstanceRef, "retaio")

	if !mouseIn && mouseIn != null && palavrasParentesco.has_node("retaio") && !$"/root/Global".podeSetar:
		$"/root/Global".mudarRetalhoArrastado(null)
		palavrasParentesco.get_node("retaio").free()

func instanceRetalho(var ref, var nome):
	if !palavrasParentesco.has_node(nome) && mouseIn && !$"/root/Global".jaSetou:
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
	
	if palavrasParentesco.has_node(nome) && !mouseIn && !$"/root/Global".jaSetou:
		palavraInstanciada = palavrasParentesco.get_node(nome)
		if (clickPosition != null):
			palavraInstanciada.set_position(clickPosition)
		palavraInstanciada.visible = true

func _input(event):
	if event is InputEventScreenDrag:
		clickPosition = event.position

func _on_TextureButton_button_down():
	$"/root/Global".jaSetou = false
	mouseIn = true
func _on_TextureButton_button_up():
	mouseIn = false

func _on_Area2D_area_entered(area):
	pass

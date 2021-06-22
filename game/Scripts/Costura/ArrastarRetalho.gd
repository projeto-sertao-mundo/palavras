extends Control

var mouseIn
var primeiroNode
var palavraInstanciada
var palavrasParentesco
var nomeR = self.name
var sprite
var clickPosition
var areaEntered
var setRetalhoFrase
var setouRetalho

export var isRetalho = true

func _ready():
	setouRetalho = false
	setRetalhoFrase = false
	primeiroNode = $"/root/Global".firstSceneNode
	palavrasParentesco = primeiroNode
	if (primeiroNode.has_node("RetalhoGrande")):
		sprite = primeiroNode.get_node("RetalhoGrande")

func _process(_delta):
	
	if (primeiroNode.name == "QuartoCostura"):
		instanceRetalho($"/root/Global".retalhoInstanceRef, "retaio", Vector2(0.7,0.7))
		moveRetalho()
	
	
	elif (primeiroNode.name == "QuartoFrases"):
		if (sprite.visible):
			instanceRetalho($"/root/Global".retalhoInstanceRef, "retaio", Vector2(1.2,1.2))
			moveRetalho()
	
	if (!setRetalhoFrase && !setouRetalho):
			if !mouseIn && mouseIn != null && palavrasParentesco.has_node("retaio") && !$"/root/Global".podeSetar:
				$"/root/Global".mudarRetalhoArrastado(null)
				if (palavraInstanciada != null):
					palavraInstanciada.free()


func instanceRetalho(var ref, var nome, var scale):
	if !palavrasParentesco.has_node(nome) && mouseIn && !$"/root/Global".jaSetou:
		palavraInstanciada = ref.instance()
		clickPosition = Vector2(self.rect_global_position)
		palavraInstanciada.name = nome
		palavraInstanciada.set_scale(scale)
		palavraInstanciada.visible = false
		palavrasParentesco.add_child(palavraInstanciada)
		
		$"/root/Global".mudarRetalhoArrastado(self)
		
		var mioloInst = palavraInstanciada.get_node("Miolo")
		var bordaInst = palavraInstanciada.get_node("Borda")
		var mioloSelf = self.get_node("Miolo")
		var bordaSelf = self.get_node("Borda")
		
		mioloInst.texture = self.get_node("Miolo").texture
		bordaInst.texture = self.get_node("Borda").texture
		
		mioloInst.modulate = Color(mioloSelf.modulate.r, mioloSelf.modulate.g, mioloSelf.modulate.b)
		bordaInst.modulate = Color(bordaSelf.modulate.r, bordaSelf.modulate.g, bordaSelf.modulate.b)
		
		palavraInstanciada.get_node("Label").text = self.get_node("Label").text

func moveRetalho():
	if palavrasParentesco.has_node("retaio") && !mouseIn && !$"/root/Global".jaSetou && palavraInstanciada != null:
		palavraInstanciada = palavrasParentesco.get_node("retaio")
	if (clickPosition != null && palavraInstanciada != null):
		palavraInstanciada.set_position(clickPosition)
	if palavraInstanciada != null:
		palavraInstanciada.visible = true

func _input(event):
	if event is InputEventScreenDrag:
		clickPosition = event.position

func _on_TextureButton_button_down():
	$"/root/Global".jaSetou = false
	mouseIn = true
func _on_TextureButton_button_up():
	mouseIn = false


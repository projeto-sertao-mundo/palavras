extends TextureButton

var mouseIn
var primeiroNode
var palavraInstanciada
var palavrasParentesco
var nomeR = self.name
var sprite
var clickPosition
var areaEntered
var setRetalhoFrase
var placedPosition
var canMove = true
#var setouRetalho

func _ready():
	#setouRetalho = false
	setRetalhoFrase = false
	primeiroNode = $"/root/Global".firstSceneNode
	palavrasParentesco = primeiroNode.get_node("RetalhoGrande")
	if (primeiroNode.has_node("RetalhoGrande")):
		sprite = primeiroNode.get_node("RetalhoGrande")

func _process(_delta):
	if ($"/root/TutorialGlobal".tutorialPos == 23 || !$"/root/TutorialGlobal".willDoTutorial || $"/root/TutorialGlobal".FrasesCompleted):
		if (mouseIn && clickPosition != null && placedPosition != clickPosition && canMove):
			self.set_position(sprite.to_local(clickPosition))
			placedPosition = clickPosition
		elif (!setRetalhoFrase && !mouseIn && clickPosition != null):
			self.free()

func _input(event):
	if event is InputEventScreenDrag:
		clickPosition = event.position

func _on_TextureButton_button_down():
	$"/root/Global".jaSetou = false
	mouseIn = true
func _on_TextureButton_button_up():
	clickPosition = sprite.to_local(self.rect_position)
	mouseIn = false

func _on_Area2D_area_entered(area):
	if (area.get_parent().name == "RetalhoGrande"):
		setRetalhoFrase = true
func _on_Area2D_area_exited(area):
	if (area.get_parent().name == "RetalhoGrande"):
		setRetalhoFrase = false

#func instanceRetalho(var ref, var nome, var scale):
#	if !palavrasParentesco.has_node(nome) && mouseIn && !$"/root/Global".jaSetou:
#		palavraInstanciada = ref.instance()
#		clickPosition = Vector2(self.rect_global_position)
#		palavraInstanciada.name = nome
#		palavraInstanciada.set_scale(scale)
#		palavraInstanciada.visible = false
#		palavrasParentesco.add_child(palavraInstanciada)
#
#		var mioloInst = palavraInstanciada.get_node("Miolo")
#		var bordaInst = palavraInstanciada.get_node("Borda")
#		var mioloSelf = self.get_node("Miolo")
#		var bordaSelf = self.get_node("Borda")
#
#		mioloInst.texture = self.get_node("Miolo").texture
#		bordaInst.texture = self.get_node("Borda").texture
#
#		mioloInst.modulate = Color(mioloSelf.modulate.r, mioloSelf.modulate.g, mioloSelf.modulate.b)
#		bordaInst.modulate = Color(bordaSelf.modulate.r, bordaSelf.modulate.g, bordaSelf.modulate.b)
#
#		palavraInstanciada.get_node("Label").text = self.get_node("Label").text
#
#func moveRetalho():
#	if palavrasParentesco.has_node("retaio") && !mouseIn && !$"/root/Global".jaSetou && palavraInstanciada != null:
#		palavraInstanciada = palavrasParentesco.get_node("retaio")
#	if (clickPosition != null && palavraInstanciada != null):
#		palavraInstanciada.set_position(clickPosition)
#	if palavraInstanciada != null:
#		palavraInstanciada.visible = true


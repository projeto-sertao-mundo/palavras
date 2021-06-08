extends Sprite

var setRetalhoFrase
var mouseIn
var setouRetalho
var clickPosition
var palavrasParentesco
var palavraInstanciada

func _ready():
	palavrasParentesco = self

func instanceRetalho(var ref, var nome, var positionR, changeGlobal):
	if (self.visible):
		palavraInstanciada = ref.instance()
		palavraInstanciada.name = nome
		palavraInstanciada.visible = true
		palavrasParentesco.call_deferred("add_child", palavraInstanciada)
		
		palavraInstanciada.set_scale(Vector2(0.55,0.55))
		if (positionR != null):
			palavraInstanciada.set_position(to_local(positionR))
		
		var mioloInst = palavraInstanciada.get_node("Miolo")
		var bordaInst = palavraInstanciada.get_node("Borda")
		var mioloSelf = self.get_parent().get_node("retaio/Miolo")
		var bordaSelf = self.get_parent().get_node("retaio/Borda")
		
		mioloInst.texture = mioloSelf.texture
		bordaInst.texture = bordaSelf.texture
		
		mioloInst.modulate = Color(mioloSelf.modulate.r, mioloSelf.modulate.g, mioloSelf.modulate.b)
		bordaInst.modulate = Color(bordaSelf.modulate.r, bordaSelf.modulate.g, bordaSelf.modulate.b)
		
		palavraInstanciada.get_node("Label").text = self.get_parent().get_node("retaio/Label").text
	else:
		setouRetalho = false
	
func _input(event):
	if event is InputEventScreenDrag:
		clickPosition = event.position
		mouseIn = true
	else:
		mouseIn = false

func _on_Area2D_area_entered(area):
	if (area.get_parent().name == "retaio"):
		setRetalhoFrase = true

func _on_Area2D_area_exited(area):
	if (area.get_parent().name == "retaio" && !mouseIn && !self.has_node("retaio")):
		if (!setouRetalho):
			instanceRetalho($"/root/Global".retalhoInstanceRef, "retaio", clickPosition, false)
			setouRetalho = true
			self.get_parent().get_node("Confirm").visible = true

func _on_ExitButton_pressed():
	setouRetalho = false
	if (self.has_node("retaio")):
		self.get_node("retaio").free()
		setRetalhoFrase = false
		self.get_parent().get_node("Confirm").visible = false


func _on_Confirm_pressed():
	$"/root/Global".criarFrase(self.texture, palavraInstanciada, palavraInstanciada.get_position())
	_on_ExitButton_pressed()

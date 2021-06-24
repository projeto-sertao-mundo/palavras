extends Sprite

var setRetalhoFrase
var mouseIn
#var setouRetalho
var clickPosition
var palavrasParentesco
var palavraInstanciada
var sprite

func _ready():
	palavrasParentesco = self

func instanceRetalho(var ref, var nome, var positionR, var _changeGlobal):
	if (self.visible && self.get_parent().has_node("retaio/Miolo") && self.get_parent().has_node("retaio/Borda")):
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
	
		if (mioloInst != null && mioloSelf != null):
			mioloInst.texture = mioloSelf.texture
			mioloInst.modulate = Color(mioloSelf.modulate.r, mioloSelf.modulate.g, mioloSelf.modulate.b)
			bordaInst.texture = bordaSelf.texture
			bordaInst.modulate = Color(bordaSelf.modulate.r, bordaSelf.modulate.g, bordaSelf.modulate.b)
			palavraInstanciada.get_node("Label").text = self.get_parent().get_node("retaio/Label").text
		else:
			return
	
func _input(event):
	if event is InputEventScreenDrag:
		clickPosition = event.position
	if event is InputEventScreenTouch:
		mouseIn = !mouseIn

func _on_Area2D_area_entered(area):
	if (area.get_parent().name == "retaio"):
		setRetalhoFrase = true

func _on_Area2D_area_exited(area):
	if (area.get_parent().name == "retaio" && !mouseIn):
		
		if ($"/root/TutorialGlobal".tutorialPos == 23):
			get_parent().get_node("Tutorial4").Tutorial24()
		
		instanceRetalho($"/root/Global".retalhosFrasesRef, "retaio", clickPosition, false)
		self.get_parent().get_node("Confirm").visible = true

func _on_ExitButton_pressed():
	if ($"/root/TutorialGlobal".FrasesCompleted || !$"/root/TutorialGlobal".willDoTutorial):
		for child in self.get_children():
			if !(child is Area2D) && !(child is CollisionShape2D):
				child.free()
		
	setRetalhoFrase = false
	self.get_parent().get_node("Confirm").visible = false

func _on_Confirm_pressed():
	if ($"/root/TutorialGlobal".tutorialPos == 24 || !$"/root/TutorialGlobal".willDoTutorial || $"/root/TutorialGlobal".FrasesCompleted):
	
		if ($"/root/TutorialGlobal".tutorialPos == 24):
			get_parent().get_node("Tutorial4").Tutorial25()
			get_parent().get_node("Tutorial4/SetaConfirmar").visible = false
	
		self.visible = false
		self.get_parent().get_node("Confirm").visible = false
		var retalhos = []
		for child in self.get_children():
			if child is TextureButton:
				print(child.name)
				var retalhoNew = RetalhoToGlobal.new(child.get_node("Miolo").texture, child.get_node("Borda").texture, child.get_node("Miolo").modulate,  child.get_node("Borda").modulate, child.get_node("Label").text, child.get_rect().position, child.texture_normal) 
				retalhos.append(retalhoNew)
				child.free()
		
		self.get_parent().get_node("Confirm").visible = false
		
		if ($"/root/Global".cartaoEditando == null):
			$"/root/Global".criarFrase(self.texture, retalhos)
		else:
			$"/root/Global".editarFrase(self.texture, retalhos)

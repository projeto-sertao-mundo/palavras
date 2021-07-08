extends Control

var primeiroNode
var sprite
var confirmar
var retalhoLock
var descartButton

func _ready():
	primeiroNode = self.get_parent().get_parent().get_parent().get_parent()
	sprite = primeiroNode.get_node("RetalhoGrande")
	confirmar = primeiroNode.get_node("Confirm")
	retalhoLock = primeiroNode.get_node("FraseLock")
	descartButton = primeiroNode.get_node("Descartar")

func _on_TextureButton_pressed():
	
	if ($"/root/TutorialGlobal".tutorialPos == 26 || !$"/root/TutorialGlobal".willDoTutorial || $"/root/TutorialGlobal".FrasesCompleted):
		
		if ($"/root/TutorialGlobal".tutorialPos == 26):
			get_parent().get_parent().get_parent().get_parent().get_node("Tutorial4").Tutorial27()
		
		sprite.visible = true
		sprite.texture = self.get_node("Cartao").texture_normal
		
		for child in sprite.get_children():
			if child is TextureButton:
				child.free()
		
		retalhoLock.visible = true
		descartButton.visible = true
		#confirmar.visible = true
	#	$"/root/Global".cartaoEditando = self.name
		
		instanceRetalhos()
	

func instanceRetalhos():
	
	var cartoes = $"/root/Global".retornarCartoes()
	
	for cartao in cartoes:
		if str(cartao.codigo) == self.name:
			for retalho in cartao.retalhos:
				var retalhoInstanciado = $"/root/Global".retalhosFrasesRef.instance()
				retalhoInstanciado.disabled = true
				sprite.add_child(retalhoInstanciado)
				retalhoInstanciado.set_scale(Vector2(0.6,0.6))
				retalhoInstanciado.canMove = false
				
				retalhoInstanciado.get_node("Borda").modulate = retalho.retalhoBordaColor
				retalhoInstanciado.get_node("Miolo").modulate = retalho.retalhoMioloColor
				retalhoInstanciado.get_node("Borda").texture = retalho.retalhoBordaTex
				retalhoInstanciado.get_node("Miolo").texture = retalho.retalhoMioloTex
				retalhoInstanciado.get_node("Label").text = retalho.retalhoLabel
				retalhoInstanciado.set_position(Vector2(retalho.posicaoRetalho.x, retalho.posicaoRetalho.y))
			
			$"/root/Global".selectedCard = cartao.codigo


func _on_Control_pressed():
	_on_TextureButton_pressed()

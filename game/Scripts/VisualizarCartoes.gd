extends TextureButton

var sprite
var confirmar
var retalhoLock

func _ready():
	sprite = self.get_parent().get_parent().get_parent().get_parent().get_node("RetalhoGrande")
	confirmar = sprite.get_parent().get_node("Confirm")
	retalhoLock = sprite.get_parent().get_node("FraseLock")

func _on_TextureButton_pressed():
	sprite.visible = true
	sprite.texture = self.texture_normal
	
	for child in sprite.get_children():
		if child is TextureButton:
			child.free()
	
	retalhoLock.visible = true
	#confirmar.visible = true
#	$"/root/Global".cartaoEditando = self.name
	
	instanceRetalhos()
	
func _on_TextureControl_pressed():
	_on_TextureButton_pressed()
	

func instanceRetalhos():
	
	var cartoes = $"/root/Global".retornarCartoes()
	
	for cartao in cartoes:
		if str(cartao.codigo) == self.name:
			for retalho in cartao.retalhos:
				var retalhoInstanciado = $"/root/Global".retalhosFrasesRef.instance()
				retalhoInstanciado.disabled = true
				sprite.add_child(retalhoInstanciado)
				retalhoInstanciado.set_scale(Vector2(0.6,0.6))
				
				retalhoInstanciado.get_node("Borda").modulate = retalho.retalhoBordaColor
				retalhoInstanciado.get_node("Miolo").modulate = retalho.retalhoMioloColor
				retalhoInstanciado.get_node("Borda").texture = retalho.retalhoBordaTex
				retalhoInstanciado.get_node("Miolo").texture = retalho.retalhoMioloTex
				retalhoInstanciado.get_node("Label").text = retalho.retalhoLabel
				retalhoInstanciado.set_position(Vector2(retalho.posicaoRetalho.x, retalho.posicaoRetalho.y))

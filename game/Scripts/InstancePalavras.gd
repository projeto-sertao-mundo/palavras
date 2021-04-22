extends Control
var foiClicado = false;

func InstanciarPalavras():
	var bolsa = []
	var bolsaLetras = []
	var bolsaLetrasAcentuadas = []
	
	bolsa = $"/root/Global".retornarPalavras()
	bolsaLetras = $"/root/Global".retornarLetras()
	bolsaLetrasAcentuadas = $"/root/Global".retornarLetrasAcentuadas()
	
	if get_child(6).name == "Palavras":
		for textoPalavra in bolsa:
			if !get_node("Palavras").has_node("GridPalavras/"+textoPalavra):
				var palavraInstanciada = $"/root/Global".palavraInstanceRef.instance()
				var caminhoParentesco = self.get_node("Palavras").get_node("GridPalavras")
				
				caminhoParentesco.add_child(palavraInstanciada)
				palavraInstanciada.name = textoPalavra
				palavraInstanciada.get_node("Label").text = textoPalavra
		
	elif get_child(6).name == "Letras":

		for letraRefAc in bolsaLetrasAcentuadas:
			if !get_node("Letras").has_node("GridLetrasAcentuadas/"+letraRefAc.nome):
				var letraInstanciada = $"/root/Global".letraInstanceRef.instance()
				letraInstanciada.name = letraRefAc.nome
				letraInstanciada.isLetraAcentuada = true
				self.get_node("Letras").get_node("GridLetrasAcentuadas").add_child(letraInstanciada)
				letraInstanciada.texture_normal = letraRefAc.sprite
				letraInstanciada.modulate = letraRefAc.cor
		
		for letraRef in bolsaLetras:
			if !get_node("Letras").has_node("GridLetras/"+letraRef.nome):
				var letraInstanciada = $"/root/Global".letraInstanceRef.instance()
				letraInstanciada.name = letraRef.nome
				self.get_node("Letras").get_node("GridLetras").add_child(letraInstanciada)
				letraInstanciada.texture_normal = letraRef.sprite
				letraInstanciada.modulate = letraRef.cor
			
		

func _on_Bolsa_pressed():
	self.show()
	InstanciarPalavras()

func _on_ButtonPalavras_pressed():
	move_child(get_node("Palavras"), 6)
	InstanciarPalavras()

func _on_ButtonLetras_pressed():
	move_child(get_node("Letras"), 6)
	InstanciarPalavras()

func _on_ButtonRetalhos_pressed():
	move_child(get_node("Retalhos"), 6)
	InstanciarPalavras()

func _on_Voltar_pressed():
	self.hide()

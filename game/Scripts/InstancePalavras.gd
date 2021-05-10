extends Control
var foiClicado = false;

func InstanciarPalavras():
	var bolsa = []
	bolsa = $"/root/Global".retornarPalavras()
	
	if get_child(6).name == "Palavras":
		for textoPalavra in bolsa:
			if !get_node("Palavras").has_node("GridPalavras/"+textoPalavra):
				var palavraInstanciada = $"/root/Global".palavraInstanceRef.instance()
				var caminhoParentesco = self.get_node("Palavras").get_node("GridPalavras")
				
				caminhoParentesco.add_child(palavraInstanciada)
				palavraInstanciada.name = textoPalavra
				palavraInstanciada.get_node("Label").text = textoPalavra
	elif get_child(6).name == "Letras":
		
		var bolsaLetrasAcentuadas = []
		var bolsaLetras = []
		bolsaLetras = $"/root/Global".retornarLetras()
		bolsaLetrasAcentuadas = $"/root/Global".retornarLetrasAcentuadas()
		
		for letraRefAc in bolsaLetrasAcentuadas:
			if !get_node("Letras").has_node("GridLetrasAcentuadas/"+letraRefAc.nome):
				var letraInstanciada = $"/root/Global".letraInstanceRef.instance()
				letraInstanciada.name = letraRefAc.nome
				letraInstanciada.isLetraAcentuada = true
				self.get_node("Letras").get_node("GridLetrasAcentuadas").add_child(letraInstanciada)
				letraInstanciada.texture_normal = letraRefAc.sprite
				#letraInstanciada.modulate = letraRefAc.cor
		
		for letraRef in bolsaLetras:
			if !get_node("Letras").has_node("GridLetras/"+letraRef.nome):
				var letraInstanciada = $"/root/Global".letraInstanceRef.instance()
				letraInstanciada.name = letraRef.nome
				self.get_node("Letras").get_node("GridLetras").add_child(letraInstanciada)
				letraInstanciada.texture_normal = letraRef.sprite
	elif get_child(6).name == "Retalhos":
		var retalhos = []
		retalhos = $"/root/Global".retornarRetalhos()
		for retalhoRef in retalhos:
			if !get_node("Retalhos").has_node("GridRetalhos/"+str(retalhoRef.codigo)):
				var retalhoInstanciado = $"/root/Global".retalhoInstanceRef.instance()
				retalhoInstanciado.name = str(retalhoRef.codigo)
				retalhoInstanciado.get_node("Borda").modulate = retalhoRef.corBorda
				retalhoInstanciado.get_node("Miolo").modulate = retalhoRef.corMiolo
				retalhoInstanciado.get_node("Borda").texture = retalhoRef.spriteBorda
				retalhoInstanciado.get_node("Miolo").texture = retalhoRef.spriteMiolo
				retalhoInstanciado.get_node("Label").text = retalhoRef.labelText
				self.get_node("Retalhos").get_node("GridRetalhos").add_child(retalhoInstanciado)


func _on_Bolsa_pressed():
	self.show()
	InstanciarPalavras()

func _on_ButtonPalavras_pressed():
	move_child(get_node("Palavras"), 6)
	InstanciarPalavras()
	get_node("Retalhos/GridRetalhos").hide()
	get_node("Palavras/GridPalavras").show()
	get_node("Letras/GridLetras").hide()
	get_node("Letras/GridLetrasAcentuadas").hide()

func _on_ButtonLetras_pressed():
	move_child(get_node("Letras"), 6)
	InstanciarPalavras()
	get_node("Retalhos/GridRetalhos").hide()
	get_node("Palavras/GridPalavras").hide()
	get_node("Letras/GridLetras").show()
	get_node("Letras/GridLetrasAcentuadas").show()

func _on_ButtonRetalhos_pressed():
	move_child(get_node("Retalhos"), 6)
	InstanciarPalavras()
	get_node("Retalhos/GridRetalhos").show()
	get_node("Palavras/GridPalavras").hide()
	get_node("Letras/GridLetras").hide()
	get_node("Letras/GridLetrasAcentuadas").hide()

func _on_Voltar_pressed():
	self.hide()

func _on_Costurar_pressed():
	InstanciarPalavras()

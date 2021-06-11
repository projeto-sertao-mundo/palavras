extends Control
var foiClicado = false
var retalhoInstanciado

func _ready():
	InstanciarPalavras()

func InstanciarPalavras():
	if get_child(6).name == "Palavras":
		var bolsaPalavras = []
		bolsaPalavras = $"/root/Global".retornarPalavras()
		var gridPalavras = get_node("Palavras/GridContainer")
		
		for morfema in bolsaPalavras:
			gridPalavras.get_node(morfema).disabled = false
			gridPalavras.get_node(morfema).visible = true
			
		
	if get_child(6).name == "Letras":
		
		var bolsaLetrasAcentuadas = []
		var bolsaLetras = []
		bolsaLetras = $"/root/Global".retornarLetras()
		bolsaLetrasAcentuadas = $"/root/Global".retornarLetrasAcentuadas()
		
		for letra in bolsaLetras:
			var gridLetras = get_node("Letras/GridLetras")
			if (gridLetras.has_node(letra.nome)):
				gridLetras.get_node(letra.nome).disabled = false
				gridLetras.get_node(letra.nome).visible = true
		
		for letraAcentuada in bolsaLetrasAcentuadas:
			var gridLetrasAcentuadas = get_node("Letras/GridLetrasAcentuadas")
			if (gridLetrasAcentuadas.has_node(letraAcentuada.nome)):
				gridLetrasAcentuadas.get_node(letraAcentuada.nome).disabled = false
				gridLetrasAcentuadas.get_node(letraAcentuada.nome).visible = true
		
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
		
	elif get_child(6).name == "Cartões":
		var cartoes = []
		cartoes = $"/root/Global".retornarCartoes()
		var aux = 0;
		for cartao in cartoes:
			if (!get_node("Cartões").has_node("GridCartões/"+str(cartao.codigo))):
				var cartaoInstanciado = $"/root/Global".cartoesInstanceRef.instance()
				cartaoInstanciado.name = str(cartao.codigo)
				cartaoInstanciado.texture_normal = cartao.sprite
				self.get_node("Cartões").get_node("GridCartões").add_child(cartaoInstanciado)
				
				for retalho in cartao.retalhos:
					retalhoInstanciado = $"/root/Global".retalhoInstanceRef.instance()
					print(retalhoInstanciado.name)
					cartaoInstanciado.add_child(retalhoInstanciado)
					print(cartaoInstanciado.name)
					retalhoInstanciado.set_scale(Vector2(0.6,0.6))
					
					retalhoInstanciado.get_node("Borda").modulate = retalho.retalhoBordaColor
					retalhoInstanciado.get_node("Miolo").modulate = retalho.retalhoMioloColor
					retalhoInstanciado.get_node("Borda").texture = retalho.retalhoBordaTex
					retalhoInstanciado.get_node("Miolo").texture = retalho.retalhoMioloTex
					retalhoInstanciado.get_node("Label").text = retalho.retalhoLabel
					retalhoInstanciado.set_position(Vector2(retalho.posicaoRetalho.x + 158.5, retalho.posicaoRetalho.y + 97))

func _on_Bolsa_pressed():
	self.show()
	InstanciarPalavras()

func _on_ButtonPalavras_pressed():
	move_child(get_node("Palavras"), 6)
	InstanciarPalavras()
	if (has_node("Retalhos/GridRetalhos")):
		get_node("Retalhos/GridRetalhos").hide()
	if (has_node("Letras/GridLetras")):
		get_node("Letras/GridLetras").hide()
	if (has_node("Letras/GridLetrasAcentuadas")):
		get_node("Letras/GridLetrasAcentuadas").hide()
	if (has_node("Cartões/GridCartões")):
		get_node("Cartões/GridCartões").hide()

func _on_ButtonLetras_pressed():
	move_child(get_node("Letras"), 6)
	InstanciarPalavras()
	if (has_node("Retalhos/GridRetalhos")):
		get_node("Retalhos/GridRetalhos").hide()
	if (has_node("Letras/GridLetras")):
		get_node("Letras/GridLetras").show()
	if (has_node("Letras/GridLetrasAcentuadas")):
		get_node("Letras/GridLetrasAcentuadas").show()
	if (has_node("Cartões/GridCartões")):
		get_node("Cartões/GridCartões").hide()

func _on_ButtonRetalhos_pressed():
	move_child(get_node("Retalhos"), 6)
	InstanciarPalavras()
	
	if (has_node("Retalhos/GridRetalhos")):
		get_node("Retalhos/GridRetalhos").show()
	if (has_node("Letras/GridLetras")):
		get_node("Letras/GridLetras").hide()
	if (has_node("Letras/GridLetrasAcentuadas")):
		get_node("Letras/GridLetrasAcentuadas").hide()
	if (has_node("Cartões/GridCartões")):
		get_node("Cartões/GridCartões").hide()

func _on_Voltar_pressed():
	self.hide()

func _on_Costurar_pressed():
	InstanciarPalavras()

func _on_ButtonCartoes_pressed():
	move_child(get_node("Cartões"), 6)
	InstanciarPalavras()
	
	get_node("Cartões/GridCartões").show()
	
	if (has_node("Letras/GridLetras")):
		get_node("Letras/GridLetras").hide()
	if (has_node("Letras/GridLetrasAcentuadas")):
		get_node("Letras/GridLetrasAcentuadas").hide()
	if (has_node("Retalhos/GridRetalhos")):
		get_node("Retalhos/GridRetalhos").hide()

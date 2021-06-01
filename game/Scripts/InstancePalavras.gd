extends Control
var foiClicado = false;

func _ready():
	InstanciarPalavras()

func InstanciarPalavras():
	print(get_child(6).name)
	if get_child(6).name == "Palavras":
		var bolsaPalavras = []
		bolsaPalavras = $"/root/Global".retornarPalavras()
		var gridPalavras = get_node("Palavras/GridContainer")
		
		print(bolsaPalavras.size())
		
		for morfema in bolsaPalavras:
			print(morfema)
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
			
#		for letraRefAc in bolsaLetrasAcentuadas:
#			if !get_node("Letras").has_node("GridLetrasAcentuadas/"+letraRefAc.nome):
#				var letraInstanciada = $"/root/Global".letraInstanceRef.instance()
#				letraInstanciada.name = letraRefAc.nome
#				letraInstanciada.isLetraAcentuada = true
#				self.get_node("Letras").get_node("GridLetrasAcentuadas").add_child(letraInstanciada)
#				letraInstanciada.texture_normal = letraRefAc.sprite
#				#letraInstanciada.modulate = letraRefAc.cor
#
#		for letraRef in bolsaLetras:
#			if !get_node("Letras").has_node("GridLetras/"+letraRef.nome):
#				var letraInstanciada = $"/root/Global".letraInstanceRef.instance()
#				letraInstanciada.name = letraRef.nome
#				self.get_node("Letras").get_node("GridLetras").add_child(letraInstanciada)
#				letraInstanciada.texture_normal = letraRef.sprite
	
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
	get_node("Letras/GridLetras").hide()
	get_node("Letras/GridLetrasAcentuadas").hide()

func _on_ButtonLetras_pressed():
	move_child(get_node("Letras"), 6)
	InstanciarPalavras()
	get_node("Retalhos/GridRetalhos").hide()
	get_node("Letras/GridLetras").show()
	get_node("Letras/GridLetrasAcentuadas").show()

func _on_ButtonRetalhos_pressed():
	move_child(get_node("Retalhos"), 6)
	InstanciarPalavras()
	get_node("Retalhos/GridRetalhos").show()
	get_node("Letras/GridLetras").hide()
	get_node("Letras/GridLetrasAcentuadas").hide()

func _on_Voltar_pressed():
	self.hide()

func _on_Costurar_pressed():
	InstanciarPalavras()

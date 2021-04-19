extends Control

var bolsa = []
var bolsaLetras = []
var foiClicado = false;


func InstanciarPalavras():
	bolsa = $"/root/Global".retornarPalavras()
	bolsaLetras = $"/root/Global".retornarLetras()
	
	if get_child(6).name == "Palavras":
		for textoPalavra in bolsa:
			if !get_node("Palavras").has_node("GridPalavra/"+textoPalavra):
				var palavraInstanciada = $"/root/Global".palavraInstanceRef.instance()
				palavraInstanciada.name = textoPalavra
				self.get_node("Palavras").get_node("GridPalavras").add_child(palavraInstanciada)
				palavraInstanciada.get_node("Label").text = textoPalavra
		
	elif get_child(6).name == "Letras":
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

extends Node


func _ready():
	
	var bolsa = []
	var bolsaLetras = []
	var bolsaLetrasAcentuadas = []
	
	bolsa = $"/root/Global".retornarPalavras()
	bolsaLetras = $"/root/Global".retornarLetras()
	bolsaLetrasAcentuadas = $"/root/Global".retornarLetrasAcentuadas()
	
	for palavra in bolsa:
		get_parent().get_node(palavra).queue_free()
	for letra in bolsaLetras:
		get_parent().get_node("Letras").get_node(letra.nome).queue_free()
	for letraAc in bolsaLetrasAcentuadas:
		get_parent().get_node("Letras").get_node(letraAc.nome).queue_free()
	


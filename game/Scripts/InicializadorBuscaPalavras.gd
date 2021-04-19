extends Node

var bolsa = []
var bolsaLetras = []

func _ready():
	bolsa = $"/root/Global".retornarPalavras()
	bolsaLetras = $"/root/Global".retornarLetras()
	
	for palavra in bolsa:
		get_parent().get_node(palavra).queue_free()
	for letra in bolsaLetras:
		get_parent().get_node(letra.nome).queue_free()
	

